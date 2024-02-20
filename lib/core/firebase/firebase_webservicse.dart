import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FireBaseWebservicse {
  final FirebaseAuth _firebase = FirebaseAuth.instance;

  Future<User?> signUp(String email, String password) async {
    UserCredential user = await _firebase.createUserWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  Future<User?> login(String email, String password) async {
    UserCredential user = await _firebase.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }
 
}
