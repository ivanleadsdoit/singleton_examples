import 'package:singleton_examples/data/models/user_model.dart';

class UserApi {
  // final _dio = Dio();

  Future<UserModel> getUser() async {
    return UserModel(
      id: 1,
      name: 'Marik R.',
      age: 25,
    );
  }

  Future<void> updateUser(UserModel user) async {}
}
