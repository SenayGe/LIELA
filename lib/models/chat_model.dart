import 'package:equatable/equatable.dart';
import 'package:liela/models/message_model.dart';

class Chat extends Equatable {
  final int id;
  final int userId;
  final int matchedUserId;
  final List<Message> messages;

  Chat(
      {required this.id,
      required this.userId,
      required this.matchedUserId,
      required this.messages});

  @override
  // TODO: implement props
  List<Object?> get props => [id, userId, matchedUserId, messages];

  static List<Chat> sampleChats = [
    Chat(
        id: 1,
        userId: 1,
        matchedUserId: 2,
        messages: Message.sampleMessages
            .where((msg) => ((msg.senderId == 1 && msg.receiverId == 2) ||
                (msg.senderId == 2 && msg.receiverId == 1)))
            .toList()),
    Chat(
        id: 2,
        userId: 1,
        matchedUserId: 3,
        messages: Message.sampleMessages
            .where((msg) => ((msg.senderId == 1 && msg.receiverId == 3) ||
            (msg.senderId == 3 && msg.receiverId == 1)))
            .toList()),
    Chat(
        id: 3,
        userId: 1,
        matchedUserId: 4,
        messages: Message.sampleMessages
            .where((msg) => ((msg.senderId == 1 && msg.receiverId == 4) ||
            (msg.senderId == 4 && msg.receiverId == 1)))
            .toList()),
    Chat(
        id: 4,
        userId: 1,
        matchedUserId: 5,
        messages: Message.sampleMessages
            .where((msg) => ((msg.senderId == 1 && msg.receiverId == 4) ||
            (msg.senderId == 4 && msg.receiverId == 1)))
            .toList()),
  ];
}
