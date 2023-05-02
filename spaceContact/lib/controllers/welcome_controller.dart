import 'package:flutter/material.dart';

class WelcomeController {
  final PageController controller = PageController();

  void animateToPage(int page) {
    controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }
}
