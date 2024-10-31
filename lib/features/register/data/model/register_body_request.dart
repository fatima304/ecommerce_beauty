import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_body_request.g.dart';

@JsonSerializable()
class RegisterBodyRequest {
  final String name;

  final String phone;

  final String email;

  final String password;

  final String confirmPassword;

  @JsonKey(name: 'location')
  final String location;


  RegisterBodyRequest(
      {required this.name,
      required this.phone,
      required this.email,
      required this.password,
      required this.confirmPassword,
      required this.location,
      });

  FormData toFormData() {
    var data = FormData.fromMap({
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'location': location
    });
    return data;
  }

  Map<String , dynamic> toJson() => _$RegisterBodyRequestToJson(this);

  factory RegisterBodyRequest.fromJson(Map<String, dynamic> json) => _$RegisterBodyRequestFromJson(json);
}

@JsonSerializable()
class LocationData{
  final String name ;
  final String address ;
  @JsonKey(name: 'coordinates')
  final List coordinates;

  LocationData({required this.name, required this.address, required this.coordinates});

  Map<String , dynamic> toJson() =>_$LocationDataToJson(this);

  factory LocationData.fromJson(Map<String, dynamic> json) =>_$LocationDataFromJson(json);

}
