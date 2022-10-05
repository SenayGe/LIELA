import 'dart:io';

import 'package:cross_file/src/types/interface.dart';
import 'package:liela/repositories/storage/base_storage_repository.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class StorageRepository extends BaseStorageRepository {

  final firebase_storage.FirebaseStorage firebaseStorage = firebase_storage.FirebaseStorage.instance;
  @override
  Future<void> uploadImage(XFile image) async{

    try{
      firebaseStorage.ref('user_1/${image.name}').putFile(File(image.path));
    }
    catch(_){}

  }

}