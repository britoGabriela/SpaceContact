// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:teste_ivare/components/custom_card_infoplanet_component.dart';
import 'package:teste_ivare/models/image_colors_paths.dart';
import 'package:teste_ivare/models/users_model.dart';
import 'package:teste_ivare/pages/details_page.dart';

class CustomCardUserWidget extends StatelessWidget {
  final Users user;

  const CustomCardUserWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPage(user: user))),
      child: Stack(
        children: [
          Card(
            color: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: ImageColors.colors[imagePaths[user.id - 1]]?.withOpacity(.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID 00${user.id.toString()}',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF333333),
                          ),
                        ),
                        Text(
                          user.username,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                        const SizedBox(height: 12),
                        CustomCardInfoPlanetComponent(
                          user: user,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 126,
                    height: 102,
                    decoration: BoxDecoration(
                      color: ImageColors.colors[imagePaths[user.id - 1]],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(.2),
                                Colors.white
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Image.asset(
                          imagePaths[user.id - 1],
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
