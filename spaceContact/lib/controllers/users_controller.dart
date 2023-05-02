import 'package:flutter/material.dart';
import 'package:teste_ivare/models/users_model.dart';
import 'package:teste_ivare/repositories/users_retository.dart';

class UsersController {
  final UsersRepository _usersRepository;
  UsersController(this._usersRepository) {
    fetch();
  }

  ValueNotifier<List<Users>> users = ValueNotifier<List<Users>>([]);

  List<Users> _cachedUsers = [];

  onChanged(String value) { 
    List<Users> list = _cachedUsers 
        .where(
          (e) => e.toString().toLowerCase().contains(value.toLowerCase()),
        )
        .toList();
    users.value = list;
  }

  fetch() async {
    users.value = await _usersRepository.getUsers();
    _cachedUsers = users.value;
  }
}
