import 'package:equatable/equatable.dart';

import 'models.dart';

class UserMatch extends Equatable {
  final int id;
  final int userId;
  final User matchedUser;
  final List<Chat> chats;

  const UserMatch(
      {required this.id,
      required this.userId,
      required this.matchedUser,
      required this.chats});

  @override
  // TODO: implement props
  List<Object?> get props => [id, userId, matchedUser, chats];

  static List<UserMatch> sampleMatches = [
    UserMatch(
        id: 1,
        userId: 1,
        matchedUser: User.users[1],
        chats: Chat.sampleChats
            .where((chat) => (chat.userId == 1 && chat.otherUserId == 2))
            .toList()),
    UserMatch(
        id: 2,
        userId: 1,
        matchedUser: User.users[2],
        chats: Chat.sampleChats
            .where((chat) => (chat.userId == 1 && chat.otherUserId == 3))
            .toList()),
  ];
}
