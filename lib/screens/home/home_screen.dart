import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/Screens/user/user_screen.dart';
import 'package:liela/blocs/swipe/swipe_bloc.dart';
import 'package:liela/models/models.dart';
import 'package:liela/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home ';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => HomeScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(builder: (context, state) {
        if (state is SwipeLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SwipeLoaded) {
          return Column(
            children: [
              InkWell(
                onDoubleTap: () {
                  Navigator.pushNamed(context, UsersScreen.routeName, arguments: state.users[0]);
                },
                child: Draggable(
                  child: UserCard(user: state.users[0]),
                  feedback: UserCard(
                    user: state.users[0],
                  ),
                  childWhenDragging: (state.users.length == 1)
                      ? Container(color: Colors.white)
                      : UserCard(user: state.users[1]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0.0) {
                      print(state.users[0].name);
                      context
                          .read<SwipeBloc>()
                          .add(SwipeLeftEvent(user: state.users[0]));
                      print("Swiped Left");
                      //swipeBloc.add(SwipeLeftEvent(user: state.users[0]));
                    } else {
                      context
                          .read<SwipeBloc>()
                          .add(SwipeRightEvent(user: state.users[0]));
                      print("Swiped Right");
                      //swipeBloc.add(SwipeLeftEvent(user: state.users[0]));
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, right: 50.0, left: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        context
                            .read<SwipeBloc>()
                            .add(SwipeLeftEvent(user: state.users[0]));
                        print("Swiped Left");
                      },
                      child: ReactionButton(
                        width: 60,
                        height: 60,
                        color: Colors.white60,
                        icon: Icons.clear_rounded,
                        iconColor: Colors.redAccent,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context
                            .read<SwipeBloc>()
                            .add(SwipeRightEvent(user: state.users[0]));
                        print("Swiped Right");
                      },
                      child: ReactionButton(
                          width: 80,
                          height: 80,
                          color: Colors.white60,
                          icon: Icons.favorite_rounded,
                          iconColor: Colors.greenAccent.shade700),
                    ),
                    ReactionButton(
                      width: 60,
                      height: 60,
                      color: Colors.white60,
                      icon: Icons.watch_later_rounded,
                      iconSize: 38,
                      iconColor: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
              ),
            ],
          );
        } else
          return Text("Error");
      }),
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
