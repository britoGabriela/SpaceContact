import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:teste_ivare/controllers/users_controller.dart';
import 'package:teste_ivare/models/users_model.dart';
import 'package:teste_ivare/repositories/users_repository_imp.dart';
import 'package:teste_ivare/services/modal_service.dart';
import 'package:teste_ivare/widgets/custom_card_user_widget.dart';
import 'package:teste_ivare/widgets/custom_textformfield_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UsersController _controller = UsersController(UsersRepositoryImp());
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await ModalService.showExitConfirmation(
          context,
          () => Navigator.of(context).pushNamedAndRemoveUntil(
            '/login',
            (route) => false,
          ),
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 70, right: 20),
                child: Container(
                  height: 50,
                  child: CustomTextFormFieldWidget(
                    onChanged: _controller.onChanged,
                    hint: 'Procurar usuário',
                    color: const Color(0xFFCCCCCC),
                    borderRadius: 30,
                    icon: const Icon(
                      BootstrapIcons.search,
                      color: Color(0xFF666666),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ValueListenableBuilder<List<Users>>(
                      valueListenable: _controller.users,
                      builder: (_, list, __) {
                        return list != null
                            ? ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: list.length,
                                itemBuilder: (_, index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: CustomCardUserWidget(
                                    user: list[index],
                                  ),
                                ),
                              )
                            : const Center(
                                child: Text('Falha ao carregar API'),
                              );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
