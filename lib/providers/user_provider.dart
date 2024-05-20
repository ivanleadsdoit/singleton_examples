import 'package:singleton_examples/data/api/user_api.dart';
import 'package:singleton_examples/data/models/user_model.dart';

class UserProvider {
  final _api = UserApi();

  Future<UserModel> getUser() => _api.getUser();

  Future<void> updateUser(UserModel user) => _api.updateUser(user);
}
