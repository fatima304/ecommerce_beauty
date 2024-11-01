// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModelResponse _$LoginModelResponseFromJson(Map<String, dynamic> json) =>
    LoginModelResponse(
      message: json['message'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginModelResponseToJson(LoginModelResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
    };
