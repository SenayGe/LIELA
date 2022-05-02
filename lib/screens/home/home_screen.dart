import 'package:flutter/material.dart';
import 'package:liela/models/models.dart';
import 'package:liela/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/ ';
  /*static Route route(){
    return MaterialPageRoute(
        builder: (_) => HomeScreen(),
        settings: RouteSettings(name: routeName)
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Draggable(
            child: UserCard (user: User.users[0]),
            feedback: UserCard(user: User.users[0],),
            childWhenDragging: UserCard(user: User.users[1],),
            onDragEnd: (drag){
              if (drag.velocity.pixelsPerSecond.dx< 0.0)
                print('swiped left');
              else
                print ('swiped right');


            },

          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 50.0, left: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReactionButton(width: 60,height: 60, color: Colors.white60, icon: Icons.clear_rounded, iconColor: Colors.redAccent,),
                ReactionButton(width: 80,height: 80, color: Colors.white60, icon: Icons.favorite_rounded, iconColor: Colors.greenAccent.shade700),
                ReactionButton(width: 60,height: 60, color: Colors.white60, icon: Icons.watch_later_rounded,iconSize: 38, iconColor: Colors.deepPurpleAccent,),
              ],
            ),
          ),

        ],
      ),
    );
  }


  // Loading logo image and defining size
  Image appLogo = new Image(
      image: new ExactAssetImage("assets/images/logo.png"),
      height: 38.0,
      width: 30.0,
      alignment: FractionalOffset.center);
}







/*class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        Container(

        ),
      ),
    );
  }
}*/



