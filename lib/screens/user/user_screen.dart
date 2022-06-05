import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liela/models/models.dart';
import 'package:liela/widgets/reaction_button.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  // static Route route({required }) {
  //   return MaterialPageRoute(
  //       settings: RouteSettings(name: routeName),
  //       builder: (context) => UsersScreen());
  // }

  final User user;
  const UsersScreen ({required this.user});
  @override
  Widget build(BuildContext context) {
    //final User user = User.users[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Hero(
                    tag: 'user_image',
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(user.imageUrls[1]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.name}, ${user.age}' ,  style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold)),
                Text('${user.jobTitle}' ,  style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.normal)),
                SizedBox(height: 15.0,),
                Text('About' ,  style: Theme.of(context).textTheme.headline6),
                Text('${user.bio}' ,  style: Theme.of(context).textTheme.bodyText1!.copyWith( height: 2.0)),
                SizedBox(height: 15.0,),
                Text('Interests' ,  style: Theme.of(context).textTheme.headline6),

              ],
            ),
          )
        ],
      ),
    );
  }
}
