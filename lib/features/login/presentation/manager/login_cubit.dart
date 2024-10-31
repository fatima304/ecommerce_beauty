import 'package:beauty_ecommerce/features/login/data/model/login_body_request.dart';
import 'package:beauty_ecommerce/features/login/data/repo/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());

  final LoginRepo loginRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var globalKey = GlobalKey<FormState>();

  static LoginCubit get(context) => BlocProvider.of(context);
  void login() async {
    emit(LoginLoading());
    var response = await loginRepo.signIn(LoginBodyRequest(
        email: emailController.text, password: passwordController.text));
    response.fold((error) {
      emit(LoginFailed(error: error.message ?? ""));
    }, (loginData) {
      emit(LoginSuccess());
    });
  }

  bool isObscurePassword = false ;

  void changeObscurePassword(){
    isObscurePassword = !isObscurePassword;
    emit(LoginChangeObscurePassword());
  }
}
