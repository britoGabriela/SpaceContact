import 'package:teste_ivare/models/users_model.dart';

abstract class UsersRepository {

  Future<List<Users>> getUsers();

}