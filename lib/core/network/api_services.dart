
import 'package:beauty_ecommerce/features/login/data/model/login_model_response.dart';
import 'package:beauty_ecommerce/features/register/data/model/register_model_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/home/data/model/beauty_product_model_response.dart';
import '../../features/login/data/model/login_body_request.dart';
import 'api_constants.dart';
part 'api_services.g.dart';

@RestApi(baseUrl : ApiConstants.makeupBaseUrl)
abstract class ApiMakeupServices{
  factory ApiMakeupServices(Dio dio, {String? baseUrl}) = _ApiMakeupServices;


  @GET(ApiConstants.productEndPoint)
  Future<List<BeautyProductModelResponse>> getProduct(
      @Query('brand') String brand,
      );

  @GET(ApiConstants.productEndPoint)
  Future<List<BeautyProductModelResponse>> searchUsingProductType(
      @Queries() Map<String , dynamic> queries ,
      );
}

@RestApi(baseUrl : ApiConstants.authBaseUrl)
abstract class ApiAuthServices{
  factory ApiAuthServices(Dio dio, {String? baseUrl}) = _ApiAuthServices;

  @POST(ApiConstants.registerEndPoint)
  @MultiPart()
  Future<RegisterModelResponse> sighUp(
      @Body() FormData formData,
      );

  @POST(ApiConstants.signInEndPoint)
  Future<LoginModelResponse> signIn(
      @Body() LoginBodyRequest loginBodyRequest
      );

}