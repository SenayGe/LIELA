import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liela/models/models.dart';
import 'package:liela/widgets/reaction_button.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => UsersScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(User.users[0].imageUrls[1]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ReactionButton(
                      width: 60,
                      height: 60,
                      color: Colors.white,
                      icon: Icons.clear_rounded,
                      iconColor: Colors.redAccent,
                    ),
                    ReactionButton(
                      width: 80,
                      height: 80,
                      color: Colors.white,
                      icon: Icons.favorite_rounded,
                      iconColor: Colors.greenAccent.shade700),
                    ReactionButton(
                      width: 60,
                      height: 60,
                      color: Colors.white,
                      icon: Icons.watch_later_rounded,
                      iconSize: 38,
                      iconColor: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
