import 'package:beauty_ecommerce/core/network/api_error_handler.dart';
import 'package:beauty_ecommerce/core/network/api_error_model.dart';
import 'package:beauty_ecommerce/core/network/api_services.dart';
import 'package:beauty_ecommerce/features/login/data/model/login_body_request.dart';
import 'package:beauty_ecommerce/features/login/data/model/login_model_response.dart';
import 'package:dartz/dartz.dart';

class LoginRepo{

  final ApiAuthServices _apiAuthServices;

  LoginRepo(this._apiAuthServices);

  Future<Either<ApiErrorModel , LoginModelResponse>> signIn(LoginBodyRequest loginBodyRequest) async{
    try{
      var response = await _apiAuthServices.signIn(loginBodyRequest);
      return Right(response);
    } catch(error){
      return Left(ApiErrorHandler.handle(error));
    }
  }

}