import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:liela/repositories/database/database_repository.dart';
import 'package:liela/repositories/storage/base_storage_repository.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class StorageRepository extends BaseStorageRepository {
  final firebase_storage.FirebaseStorage firebaseStorage =
      firebase_storage.FirebaseStorage.instance;

  @override
  Future<void> uploadImage(XFile image) async {
    try {
      firebaseStorage
          .ref('user_1/${image.name}')
          .putFile(File(image.path))
          .then((p0) => DatabaseRepository().upddateUserPicture(image.name));
    } catch (_) {}
  }

  @override
  Future<String> getDownloadUrl(String imageName) async {
    String downloadUrl =
        await firebaseStorage.ref('user_1/$imageName').getDownloadURL();

    return downloadUrl;
  }
}
