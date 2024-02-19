import 'package:daleal/core/error/error_handler.dart';
import 'package:daleal/core/firebase/firebase_webservicse.dart';
import 'package:daleal/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final FireBaseWebservicse webservicse;

  const AuthRepo({required this.webservicse});
  Future<ServerResponse<User>> signUp(Account account) async {
    try {
      final user = await webservicse.signUp(account.email, account.password);
      await user!.sendEmailVerification();
      if (user.emailVerified) {
      return ServerResponse.data(user);    
      }
      return const ServerResponse.error(error: 'please verify your email First');
    } on FirebaseAuthException catch (e) {
      return ServerResponse.error(error: e.message!);
    } catch (e) {
      return ServerResponse.error(error: e.toString());
    }
  }

  Future<ServerResponse<User>> login(Account account) async {
    try {
      final user = await webservicse.login(account.email, account.password);
      if (user!.emailVerified) {
        return ServerResponse.data(user);
      }
      return const ServerResponse.error(
          error: 'please verify your email First');
    } on FirebaseAuthException catch (e) {
      return ServerResponse.error(error: e.message!);
    } catch (e) {
      return ServerResponse.error(error: e.toString());
    }
  }
}
