import 'package:flutter/material.dart';
import 'package:teste_ivare/widgets/exit_confirmation_widget.dart';

class ModalService {
  static showExitConfirmation(BuildContext context, VoidCallback onConfirmed) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (_) => ExitConfirmationWidget(onConfirmed: onConfirmed),
      
    ); 
  }
}