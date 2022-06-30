import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liela/models/models.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chat';

  final UserMatch userMatch;

  const ChatScreen({ required this.userMatch ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Column(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(userMatch.matchedUser.imageUrls[1]),
            ),
            Text(userMatch.matchedUser.name, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}
