import 'package:dio/dio.dart';
import 'package:teste_ivare/models/users_model.dart';
import 'package:teste_ivare/repositories/users_retository.dart';

class UsersRepositoryImp implements UsersRepository {
  @override
  Future<List<Users>> getUsers() async {
    try {
      var result =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      return (result.data as List).map((e) => Users.fromJson(e)).toList();
    } catch (e) {}

    return [];
  }
}
