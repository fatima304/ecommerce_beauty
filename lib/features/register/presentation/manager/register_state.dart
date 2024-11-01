import 'package:beauty_ecommerce/features/register/data/model/register_model_response.dart';

abstract class RegisterState {}

 class RegisterInitial extends RegisterState {}
 class RegisterLoading extends RegisterState {}
 class RegisterSuccess extends RegisterState {
 final RegisterModelResponse registerModelResponse;

  RegisterSuccess(this.registerModelResponse);
 }
 class RegisterFailed extends RegisterState {
  final String error;

  RegisterFailed({required this.error});
 }
class RegisterChangeObscurePassword extends RegisterState {}
class RegisterChangeObscureConfirmPassword extends RegisterState {}

