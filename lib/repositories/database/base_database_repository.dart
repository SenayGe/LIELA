import 'package:liela/models/user_model.dart';

abstract class BaseDatabaseRepository{
  Stream<User> getUser();
  Future<void> upddateUserPicture(String imageName);
}