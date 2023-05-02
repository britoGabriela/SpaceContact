// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:teste_ivare/pages/home_page.dart';
import 'package:teste_ivare/pages/login_page.dart';
import 'package:teste_ivare/pages/splash_page.dart';
import 'package:teste_ivare/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space Contact',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/welcome':(context) => const WelcomePage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
      },
      
    );
  }
}
