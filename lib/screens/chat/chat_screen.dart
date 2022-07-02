import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liela/models/models.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chat';

  final UserMatch userMatch;

  const ChatScreen({required this.userMatch, Key? key}) : super(key: key);

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
            Text(
              userMatch.matchedUser.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: userMatch.chats[0].messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: userMatch.chats[0].messages[index].senderId == 1
                            ? Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Theme.of(context).backgroundColor,
                                    ),
                                    child: Text(
                                        userMatch
                                            .chats[0].messages[index].message,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2)),
                              )
                            : Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 17,
                                      backgroundImage: NetworkImage(
                                          userMatch.matchedUser.imageUrls[1]),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.indigo.shade400,
                                      ),
                                      child: Text(
                                        userMatch
                                            .chats[0].messages[index].message,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                  },
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 100,
            child: Row(
              children: [
                IconButton (icon: Icon(Icons.send_outlined),onPressed: (){},),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(filled: true, fillColor: Colors.white , hintText: 'Type here', ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
