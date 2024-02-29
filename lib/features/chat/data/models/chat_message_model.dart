import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_message_model.g.dart';

@JsonSerializable()
class ChatMessageModel{
  String idFrom;
  String idTo;
  String timestamp;
  String content;
  int type;

 ChatMessageModel({
    required this.idFrom,
    required this.idTo,
    required this.timestamp,
    required this.content,
    required this.type });

 factory ChatMessageModel.fromJson(Map<String, dynamic> json)=> _$ChatMessageModelFromJson(json);

 Map<String, dynamic> toJson()=> _$ChatMessageModelToJson(this);

//   factory ChatMessageModel.fromDocument(DocumentSnapshot documentSnapshot) {
//    String idFrom = documentSnapshot.get(FirestoreConstants.idFrom);
//    String idTo = documentSnapshot.get(FirestoreConstants.idTo);
//    String timestamp = documentSnapshot.get(FirestoreConstants.timestamp);
//    String content = documentSnapshot.get(FirestoreConstants.content);
//    int type = documentSnapshot.get(FirestoreConstants.type);

//    return ChatMessageModel(
//        idFrom: idFrom,
//        idTo: idTo,
//        timestamp: timestamp,
//        content: content,
//        type: type);
//  }
}