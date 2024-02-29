import 'package:json_annotation/json_annotation.dart';

part 'chat_model.g.dart';

@JsonSerializable()
class ChatUserModel{
 final String id;
 final String photoUrl;
 final String displayName;
 final String phoneNumber;
 final String aboutMe;

 const ChatUserModel(
     {required this.id,
     required this.photoUrl,
     required this.displayName,
     required this.phoneNumber,
     required this.aboutMe});

  factory ChatUserModel.fromJson(Map<String, dynamic> json) => _$ChatUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatUserModelToJson(this);

}