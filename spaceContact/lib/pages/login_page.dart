import 'package:flutter/material.dart';
import 'package:teste_ivare/components/custom_text_component.dart';
import 'package:teste_ivare/components/custom_login_button_componet.dart';
import 'package:teste_ivare/controllers/login_controller.dart';
import 'package:teste_ivare/widgets/custom_appbar_widget.dart';
import 'package:teste_ivare/widgets/custom_textformfield_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    bool passwordVisible = false;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const CustomAppBarWidget(title: 'Entrar', backButton: BackButton(color: Color(0xFF000000),)),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!isKeyboard)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, top: 0, right: 1),
                    child: Image.asset(
                      'assets/images/login.png',
                      width: 244,
                      height: 244,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    const CustomTextComponent(
                      title: 'Que bom te ver aqui novamente!',
                      fontSize: 26,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const CustomTextComponent(
                      title: 'Preencha os dados',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF666666),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextComponent(
                          title: 'E-mail',
                          fontSize: 14,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        CustomTextFormFieldWidget(
                          hint: 'E-mail',
                          onChanged: _controller.setLogin,
                        ),
                        const SizedBox(height: 16),
                        const CustomTextComponent(
                          title: 'Senha',
                          fontSize: 14,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        CustomTextFormFieldWidget(
                          hint: 'Senha',
                          isObscure: !passwordVisible,
                          onChanged: _controller.setPassword,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
                child: CustomLoginButtonComponent(
                  loginController: _controller,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
