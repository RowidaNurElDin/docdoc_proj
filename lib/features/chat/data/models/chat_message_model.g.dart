// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) =>
    ChatMessageModel(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp: json['timestamp'] as String,
      content: json['content'] as String,
      type: json['type'] as int,
    );

Map<String, dynamic> _$ChatMessageModelToJson(ChatMessageModel instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': instance.timestamp,
      'content': instance.content,
      'type': instance.type,
    };
