import '../../../features/login/data/models/login_request_model.dart';
import '../../../features/login/data/remote_data_source/login_remote_data_source.dart';
import '../../../features/login/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  void login(LoginRequestModel loginRequestModel)async{
    emit(const LoginState.loading());
    final response = await _loginRepo.firebaseLogin(loginRequestModel);
    response.when(
        success: (data){
      emit(LoginState.success(data));},
        failure: (error){
          //TODO: Replace with error handler
          emit(LoginState.error(errorMessage: error.apiErrorModel.message??""));
        });
  }

  void validateThenLogin(){
    if(formKey.currentState!.validate()){
      login(LoginRequestModel(
          email: emailEditingController.text,
          password: passwordEditingController.text));
    }
  }


}
