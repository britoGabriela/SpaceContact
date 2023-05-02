// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:teste_ivare/components/custom_text_component.dart';
import 'package:teste_ivare/widgets/custom_elevatedbutton_widget.dart';

class CustomWelcomePageContainerWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding1;
  final EdgeInsetsGeometry padding2;
  final String image;
  final double? height;
  final double? width;
  final String title1;
  final String title2;
  final String title3;
  final double? fontSizeP;
  final double? fontSizeG;
  final FontWeight? fontWeightP;
  final FontWeight? fontWeightG;
  final VoidCallback onPressed;

  const CustomWelcomePageContainerWidget({
    Key? key,
    required this.padding1,
    required this.padding2,
    required this.image,
    this.height,
    this.width,
    required this.title1,
    required this.title2,
    required this.title3,
    this.fontSizeP = 14,
    this.fontSizeG = 26,
    this.fontWeightP = FontWeight.w400,
    this.fontWeightG = FontWeight.w700,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: padding1,
            child: Image.asset(
              image,
              width: width,
              height: height,
            ),
          ),
        ),
        Padding(
          padding: padding2,
          child: Column(
            children: [
              CustomTextComponent(
                title: title1,
                fontSize: fontSizeG,
                fontWeight: fontWeightG,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              CustomTextComponent(
                title: title2,
                fontSize: fontSizeP,
                fontWeight: fontWeightP,
                color: const Color(0xFF666666),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
          child: CustomElevatedButtonWidget(
            onPressed: onPressed,
            title: title3,
          ),
        )
      ],
    );
  }
}
