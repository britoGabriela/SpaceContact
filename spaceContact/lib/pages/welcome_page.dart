import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:teste_ivare/controllers/welcome_controller.dart';
import 'package:teste_ivare/pages/login_page.dart';
import 'package:teste_ivare/widgets/custom_appbar_widget.dart';
import 'package:teste_ivare/widgets/custom_welcomepage_container_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _controller = WelcomeController();

  @override
  void dispose() {
    _controller.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarWidget(
        title: '',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              icon: const Icon(BootstrapIcons.x_circle),
              color: const Color(0xFF000000),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _controller.controller, 
        children: [
          SingleChildScrollView(
            child: CustomWelcomePageContainerWidget(
              padding1: const EdgeInsets.only(left: 17, top: 207, right: 12),
              image: 'assets/images/welcome1.png',
              width: 342,
              height: 265,
              padding2: const EdgeInsets.only(left: 40, top: 37, right: 40),
              title1: 'Todos os Shielders em um só Lugar',
              title2:
                  'Acesse uma vasta lista de usuários de todas as galáxias já descobertas pela S.H.I.E.L.D',
              onPressed: () => _controller.animateToPage(1),
              title3: 'Continuar',
            ),
          ),
          SingleChildScrollView(
            child: CustomWelcomePageContainerWidget(
              padding1: const EdgeInsets.only(left: 46, top: 168, right: 46),
              image: 'assets/images/welcome2.png',
              width: 251,
              height: 259,
              padding2: const EdgeInsets.only(left: 50, top: 43, right: 50),
              title1: 'Mantenha sua lista atualizada',
              title2:
                  'Acesse seu perfil e descubra usuários de todas as partes do universo em um ambiente descontraído, preservando sua identidade.',
              onPressed: () => Navigator.push(
                context,
                PageTransition(
                  child: LoginPage(),
                  type: PageTransitionType.fade,
                  duration: const Duration(milliseconds: 300),
                ),
              ),
              title3: 'Vamos começar!',
            ),
          ),
        ],
      ),
    );
  }
}
