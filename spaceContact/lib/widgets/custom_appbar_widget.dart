// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final double height;
  final Widget? backButton;
  final Color? color;
  final List<Widget>? actions;

  const CustomAppBarWidget({
    Key? key,
    this.title,
    this.height = 75,
    this.backButton,
    this.color = const Color(0xFF000000),
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: backButton,
      centerTitle: true,
      title: Text(
        title!,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xFF000000),
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
