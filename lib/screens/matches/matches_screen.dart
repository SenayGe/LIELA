import 'package:flutter/material.dart';
import 'package:liela/Screens/chat/chat_screen.dart';
import 'package:liela/models/models.dart';
import 'package:liela/widgets/custom_appBar.dart';
import 'package:liela/widgets/widgets.dart';

class MatchesScreen extends StatelessWidget {
  static const String routeName = '/matches';

  const MatchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inactiveMatches = UserMatch.sampleMatches
        .where((match) => (match.userId == 1 && match.chats.isEmpty))
        .toList();
    final activeMatches = UserMatch.sampleMatches
        .where((match) => (match.userId == 1 && match.chats.isNotEmpty))
        .toList();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'MATCHES',
        hasActions: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Likes',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: inactiveMatches.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          UserSmallPic(
                              imgUrl: inactiveMatches[index]
                                  .matchedUser
                                  .imageUrls[1]),
                          Text(inactiveMatches[index].matchedUser.name,
                              style: Theme.of(context).textTheme.bodyText1)
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Your Chats',
                style: Theme.of(context).textTheme.headline6,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: activeMatches.length,
                itemBuilder: (context, index){
                  return InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        UserSmallPic(imgUrl: activeMatches[index].matchedUser.imageUrls[1]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( activeMatches[index].matchedUser.name , style: Theme.of(context).textTheme.headline6,),

                            Text(activeMatches[index].chats[0].messages[0].message, style: Theme.of(context).textTheme.bodyText2,),
                            SizedBox(height: 5,),
                            Text(activeMatches[index].chats[0].messages[0].timeString, style: Theme.of(context).textTheme.bodyText2,)
                          ],
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, ChatScreen.routeName, arguments: activeMatches[index]);

                    },
                  );

                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
