import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:liela/models/user_model.dart';
import 'package:liela/repositories/database/base_database_repository.dart';
import 'package:liela/repositories/storage/storage_repository.dart';

class DatabaseRepository extends BaseDatabaseRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Stream<User> getUser() {
    return _firebaseFirestore
        .collection('users')
        .doc('TGk0UwVGcHUGgr7Vqh5G')
        .snapshots()
        .map((snap) => User.fromSnapshot(snap));
  }

  @override
  Future<void> upddateUserPicture(String imageName) async {
    String downloadUrl = await StorageRepository().getDownloadUrl(imageName);
    return _firebaseFirestore
        .collection('users')
        .doc('TGk0UwVGcHUGgr7Vqh5G')
        .update({
      'imageUrls': FieldValue.arrayUnion([downloadUrl])
    });
  }
}
