import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/features/chat/logic/chat_cubit/chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final FirebaseFirestore firebaseFirestore;

  ChatCubit({required this.firebaseFirestore}) : super(const ChatState.initial());

  

  

}
 