import 'package:daleal/core/firebase/firebase_webservicse.dart';

class HomeRepo {
  final FireBaseWebservicse webservicse;

  HomeRepo({required this.webservicse});

  Future<void> signOut() async {
    await webservicse.signOut();
  }
}
