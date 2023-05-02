
import 'package:flutter/material.dart';
import 'package:teste_ivare/controllers/login_controller.dart';
import 'package:teste_ivare/widgets/custom_elevatedbutton_widget.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  LoginController loginController;
  CustomLoginButtonComponent({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: loginController.isLoading,
      builder: (_, isLoading, __) {
        return isLoading
            ? const CircularProgressIndicator(color: Color(0xFF173EA5))
            : CustomElevatedButtonWidget(
                onPressed: () {
                  loginController.authentication().then(
                    (result) {
                      if (result) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Color(0xFF000000),
                            content: Text('Login inválido!'),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      }
                    },
                  );
                },
                title: 'Entrar',
              );
      },
    );
  }
}
