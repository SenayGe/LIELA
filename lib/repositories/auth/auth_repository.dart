
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:liela/repositories/auth/base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final auth.FirebaseAuth _firebaseAuth;

  AuthRepository ({auth.FirebaseAuth? firebaseAuth}) :
      _firebaseAuth = firebaseAuth ?? auth.FirebaseAuth.instance;

  @override
  Future<auth.User?> signUp({required String email, required String password}) async{
    try{
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return (credential.user);
    } catch(_){}
  }

  @override
  // TODO: implement user
  Stream<auth.User?> get user => _firebaseAuth.userChanges();
  
}