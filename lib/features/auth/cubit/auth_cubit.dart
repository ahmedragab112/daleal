import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:daleal/features/auth/data/models/user_model.dart';
import 'package:daleal/features/auth/data/repo/auth_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;
  final loginValidationKey = GlobalKey<FormState>();
  final signUpValidationKey = GlobalKey<FormState>();
  final forgotPasswordValidationKey = GlobalKey<FormState>();
  AuthCubit({required this.authRepo}) : super(AuthInitial());

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController forgotPasswordEmailController = TextEditingController();

  Future<void> signUp() async {
    emit(AuthLoading());
    var data = await authRepo.signUp(Account(
        email: signUpEmailController.text,
        password: signUpPasswordController.text));
    data.when(
        data: (data) => emit(AuthSuccess(user: data)),
        error: (error) => emit(AuthError(error: error)));
  }

  Future<void> login() async {
    emit(AuthLoading());
    var data = await authRepo.login(Account(
        email: loginEmailController.text,
        password: loginPasswordController.text));
    data.when(
        data: (data) => emit(AuthSuccess(user: data)),
        error: (error) => emit(AuthError(error: error)));
  }

  Future<void> resetPassword() async {
    emit(ForgotPasswordLoading());
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: forgotPasswordEmailController.text.trim());

      emit(ForgotPasswordSuccess());
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      emit(ForgotPasswordError(error: e.message!));
    } catch (e) {
      log(e.toString());
      emit(ForgotPasswordError(error: e.toString()));
    }
  }
}
