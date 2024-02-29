import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      final response = await _apiService.login(loginRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  
  Future<ApiResult<LoginResponseModel>> firebaseLogin(
      LoginRequestModel loginRequestModel) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: loginRequestModel.email,
          password: loginRequestModel.password,

      );
      return ApiResult.success(LoginResponseModel(
        userData: UserData(
          token: userCredential.user!.uid,
          username: userCredential.user?.displayName??"Name"
        )
      ));
    }  catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}

// import 'package:docdoc/core/networking/api_constants.dart';
// import 'package:docdoc/core/networking/api_result.dart';
// import 'package:docdoc/core/networking/api_service.dart';
// import 'package:docdoc/features/login/data/models/login_request_model.dart';
// import 'package:docdoc/features/login/data/models/login_response_model.dart';
// import 'package:retrofit/http.dart';
//
// abstract class LoginRemoteDataSource implements ApiService{
//
//
//   @POST(ApiConstants.loginEndPoint)
//   Future<ApiResult<LoginResponseModel>> login(LoginRequestModel loginRequestModel);
// }
//
// class LoginRemoteDataSourceImplementation extends LoginRemoteDataSource{
//
//   @override
//   Future<ApiResult<LoginResponseModel>> login(
//       LoginRequestModel loginRequestModel) async {
//     try {
//       final response = await login(loginRequestModel);
//       return ApiResult.success(response as LoginResponseModel);
//     } catch (error) {
//       return ApiResult.failure(error.toString());
//     }
//   }
//
// }