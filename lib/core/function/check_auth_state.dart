import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

bool checkAuthState() {
  bool checkUser = false;
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      log('User is currently signed out!');
      checkUser = false;
    } else {
      log('User is signed in!');
      checkUser = true;
    }
  });
  return checkUser;
}
