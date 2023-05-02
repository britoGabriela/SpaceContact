// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:teste_ivare/components/custom_text_component.dart';
import 'package:teste_ivare/widgets/custom_elevatedbutton_widget.dart';

class ExitConfirmationWidget extends StatelessWidget {
  final VoidCallback onConfirmed;
  
  const ExitConfirmationWidget({
    Key? key,
    required this.onConfirmed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      height: 200,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(image: AssetImage('assets/images/line_modal.png')),
          const SizedBox(height: 16),
          const CustomTextComponent(
            title: 'Tem certeza que deseja sair?',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 24),
          CustomElevatedButtonWidget(
            onPressed: onConfirmed,
            title: 'Sim, Sair',
            backgroundColor: const Color(0xFFCD3131),
            height: 42,
          ),
          CustomElevatedButtonWidget(
            onPressed: () => Navigator.of(context).pop(),
            title: 'Não, cancelar',
            backgroundColor: Colors.transparent,
            height: 42,
            fontColor: const Color(0xFF333333),
          ),
        ],
      ),
    );
  }
}
