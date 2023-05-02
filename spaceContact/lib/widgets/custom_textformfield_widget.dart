// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final bool isObscure;
  final String hint;
  final Color? color;
  final double? borderRadius;
  final Icon? icon;
  final Function(String) onChanged;

  const CustomTextFormFieldWidget({
    Key? key,
    this.isObscure = false,
    required this.hint,
    this.color = const Color(0xFF999999),
    this.borderRadius = 5,
    this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: TextFormField(
        obscureText: isObscure,
        cursorHeight: 20,
        cursorWidth: 1.5,
        cursorColor: const Color(0xFF000000),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: const EdgeInsets.only(
            left: 16,
            top: 14,
            right: 16,
            bottom: 14,
          ),
          prefixIcon: icon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(color: color!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: const BorderSide(color: Color(0xFF000000)),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
