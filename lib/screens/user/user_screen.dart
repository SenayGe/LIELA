import 'package:flutter/material.dart';
import 'package:liela/models/models.dart';

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
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(User.users[0].imageUrls[1]),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
