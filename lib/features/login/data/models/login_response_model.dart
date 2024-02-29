import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel{
  String? message;
  @JsonKey(name: "data")
  UserData? userData;
  bool? status;
  int? code;

  LoginResponseModel({this.message, this.userData, this.status, this.code});

  factory LoginResponseModel.fromJson(Map<String,dynamic> json) => _$LoginResponseModelFromJson(json);

}

@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.token, this.username});

  factory UserData.fromJson(Map<String,dynamic> json) => _$UserDataFromJson(json);


}