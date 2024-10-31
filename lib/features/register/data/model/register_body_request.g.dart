// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_body_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterBodyRequest _$RegisterBodyRequestFromJson(Map<String, dynamic> json) =>
    RegisterBodyRequest(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$RegisterBodyRequestToJson(
        RegisterBodyRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'location': instance.location,
    };

LocationData _$LocationDataFromJson(Map<String, dynamic> json) => LocationData(
      name: json['name'] as String,
      address: json['address'] as String,
      coordinates: json['coordinates'] as List<dynamic>,
    );

Map<String, dynamic> _$LocationDataToJson(LocationData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'coordinates': instance.coordinates,
    };
