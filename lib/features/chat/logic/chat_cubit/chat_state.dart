import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState<T> with _$ChatState<T> {
  const factory ChatState.initial() = _Initial;


}
