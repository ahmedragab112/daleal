import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daleal/core/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireBaseWebservicse {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<User?> signUp(String email, String password) async {
    UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  Future<User?> login(String email, String password) async {
    UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  CollectionReference<UserModel> getUserCollection() {
    final collection = _firestore.collection('users').withConverter<UserModel>(
          fromFirestore: (snapshot, options) =>
              UserModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
    return collection;
  }

 Future<void> addUser(UserModel user) async{
    final collection = getUserCollection();
   await collection.add(user);
  }
  Future<void>signOut()async{
    await _firebaseAuth.signOut();
  }
}
