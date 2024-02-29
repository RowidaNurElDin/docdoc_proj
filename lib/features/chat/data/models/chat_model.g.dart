// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatUserModel _$ChatUserModelFromJson(Map<String, dynamic> json) =>
    ChatUserModel(
      id: json['id'] as String,
      photoUrl: json['photoUrl'] as String,
      displayName: json['displayName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      aboutMe: json['aboutMe'] as String,
    );

Map<String, dynamic> _$ChatUserModelToJson(ChatUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrl': instance.photoUrl,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'aboutMe': instance.aboutMe,
    };
