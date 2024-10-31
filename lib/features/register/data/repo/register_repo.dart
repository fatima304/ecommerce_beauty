import 'package:beauty_ecommerce/core/network/api_services.dart';
import 'package:beauty_ecommerce/features/register/data/model/register_body_request.dart';
import 'package:beauty_ecommerce/features/register/data/model/register_model_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_error_model.dart';

class RegisterRepo{

  final ApiAuthServices _apiAuthServices;

  RegisterRepo(this._apiAuthServices);

  Future<Either<ApiErrorModel , RegisterModelResponse>> signUp(RegisterBodyRequest registerBodyRequest) async{
    try{
      var response = await _apiAuthServices.sighUp(registerBodyRequest.toFormData());
      return Right(response);
    }catch(error){
      return Left(ApiErrorHandler.handle(error));
    }
  }
}