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
      body: UserCard (user: User.users[0]),
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



