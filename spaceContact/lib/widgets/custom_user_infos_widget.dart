// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:teste_ivare/components/custom_text_component.dart';

class CustomUserInfosWidget extends StatelessWidget {
  final Icon icon;
  final String title1;
  final String title2;
  final double? fontSizeP;
  final double? fontSizeG;

  const CustomUserInfosWidget({
    Key? key,
    required this.icon,
    required this.title1,
    required this.title2,
    this.fontSizeP = 12,
    this.fontSizeG = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 6),
            CustomTextComponent(
              title: title1,
              fontSize: fontSizeP,
              color: const Color(0xFF000000).withOpacity(.6),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border:
                  Border.all(color: const Color(0xFF000000).withOpacity(.1))),
          child: Center(
            child: CustomTextComponent(
              title: title2,
              fontSize: fontSizeG,
              color: const Color(0xFF000000).withOpacity(.9),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
