


import 'package:json_annotation/json_annotation.dart';
part 'login_model_response.g.dart';

@JsonSerializable()
class LoginModelResponse{

  final String message ;
  final String token ;

  LoginModelResponse({required this.message, required this.token});

  factory LoginModelResponse.fromJson(Map<String , dynamic> json) => _$LoginModelResponseFromJson(json);

}