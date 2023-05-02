// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:teste_ivare/models/image_colors_paths.dart';
import 'package:teste_ivare/models/users_model.dart';

class CustomCardInfoPlanetComponent extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  final Users user;

  const CustomCardInfoPlanetComponent({
    Key? key,
    this.height = 26,
    this.width = 100,
    this.fontSize = 11,
    required this.user,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: ImageColors.colors[imagePaths[user.id - 1]],
        borderRadius: BorderRadius.circular(48),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            user.address.city,
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              color: const Color(0xFF000000),
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
