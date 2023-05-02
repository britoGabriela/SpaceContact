// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_ivare/components/custom_card_infoplanet_component.dart';
import 'package:teste_ivare/components/custom_text_component.dart';
import 'package:teste_ivare/models/image_colors_paths.dart';
import 'package:teste_ivare/models/users_model.dart';
import 'package:teste_ivare/widgets/custom_appbar_widget.dart';
import 'package:teste_ivare/widgets/custom_user_infos_widget.dart';

class DetailsPage extends StatefulWidget {
  final Users user;

  const DetailsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late bool _isClicked;

  String _key = 'isClicked_';

  @override
  void initState() {
    super.initState();
    _loadFromPrefs();
    _isClicked = false;
  }

  Future<void> _loadFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isClicked = prefs.getBool(_key + widget.user.id.toString()) ?? false;
    });
  }

  Future<void> _saveToPrefs(bool newValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key + widget.user.id.toString(), newValue);
  }

  void _toggleIsClicked() {
    setState(
      () {
        _isClicked = !_isClicked;
        _saveToPrefs(_isClicked);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarWidget(
        title: '',
        color: const Color(0xFFFFFFFF),
        backButton: const BackButton(color: Color(0xFFFFFFFF)),
        actions: [
          IconButton(
            onPressed: _toggleIsClicked,
            icon: Icon(
              _isClicked ? BootstrapIcons.heart_fill : BootstrapIcons.heart,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: size.height * .45,
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 90,
                    child: Container(
                      width: 550,
                      height: 550,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            ImageColors.colors[imagePaths[widget.user.id - 1]],
                      ),
                      child: Container(
                        alignment: const Alignment(0, .85),
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(.2),
                                Colors.white,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Image.asset(
                      imagePaths[widget.user.id - 1],
                      width: 300,
                      height: 250,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextComponent(
                    title: widget.user.username,
                    fontSize: 32,
                  ),
                  CustomTextComponent(
                    title: 'ID 00${widget.user.id.toString()}',
                    fontSize: 16,
                    color: const Color(0xFF000000).withOpacity(.7),
                  ),
                  const SizedBox(height: 24),
                  CustomCardInfoPlanetComponent(
                    user: widget.user,
                    height: 36,
                    width: 150,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  CustomTextComponent(
                    title:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit sed sollicitudin.',
                    fontSize: 14,
                    color: const Color(0xFF000000).withOpacity(.7),
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      CustomUserInfosWidget(
                        icon: const Icon(BootstrapIcons.phone, size: 16),
                        title1: 'CONTATO',
                        title2: widget.user.phone,
                      ),
                      CustomUserInfosWidget(
                        icon: const Icon(BootstrapIcons.instagram, size: 16),
                        title1: 'SOCIAL',
                        title2: widget.user.website,
                      ),
                      CustomUserInfosWidget(
                        icon: const Icon(BootstrapIcons.google, size: 16),
                        title1: 'EMAIL',
                        title2: widget.user.email,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
