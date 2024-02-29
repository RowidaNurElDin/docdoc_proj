import 'package:dio/dio.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../features/login/data/models/login_request_model.dart';
import '../../../../features/login/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';
part'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndPoint)
  Future<LoginResponseModel> login(
      @Body() LoginRequestModel loginRequestBody,
      );

}