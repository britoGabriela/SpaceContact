// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? fontColor;
  final double? height;
  final double? width;

  const CustomElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    this.backgroundColor = const Color(0xFF173EA5),
    this.fontColor = const Color(0xFFFFFFFF),
    this.height = 58,
    this.width = 328,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        backgroundColor: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        fixedSize: Size(width!, height!),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: fontColor,
        ),
      ),
    );
  }
}
