import 'dart:convert';

import 'package:beauty_ecommerce/features/register/data/model/register_body_request.dart';
import 'package:beauty_ecommerce/features/register/data/repo/register_repo.dart';
import 'package:beauty_ecommerce/features/register/presentation/manager/register_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);
  final RegisterRepo registerRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  void signUp() async {
    emit(RegisterLoading());
    LocationData locationData = LocationData(
        name: "methalfa",
        address: "meet halfa",
        coordinates: [30.1572709, 31.224779]);
    var response = await registerRepo.signUp(
      RegisterBodyRequest(
        name: 'user',
        phone: '01012467440',
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        location: jsonEncode(locationData),
      ),
    );
    response.fold((error) {
      emit(RegisterFailed(error: error.error.toString()));
    }, (register) {
      emit(RegisterSuccess());
    });
  }
}
