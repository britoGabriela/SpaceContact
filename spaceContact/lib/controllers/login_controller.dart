import 'package:flutter/foundation.dart';
import 'package:teste_ivare/services/login_service.dart';

class LoginController {
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> authentication() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;
    if (_login == 'admin' && _password == '1234') {
      LoginService.save(_login!);
      return true;
    }

    return false;
  }
}