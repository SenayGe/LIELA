import 'package:flutter/material.dart';
import 'package:liela/models/models.dart';
import 'package:liela/widgets/custom_appBar.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile', hasActions: false),
      body: Column(
        children: [
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(user.imageUrls[3])),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2)
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black26.withOpacity(0.1),
                        Colors.black26.withOpacity(0.7),
                      ],
                    )),
                child: Align(
                  alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(user.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white)),
                    )),
              )
            ],
          ),
          Column(
            children: [
              TitleWithIcon(title: 'Biography', icon: Icons.edit,),
              Text(user.bio),
              TitleWithIcon(title: 'Pictures', icon: Icons.edit,),
              TitleWithIcon(title: 'Location', icon: Icons.edit,),
              TitleWithIcon(title: 'Interests', icon: Icons.edit,),

            ],
          )
        ],
      ),
    );
  }
}

class TitleWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const TitleWithIcon({
    required this.title, required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold)),
        IconButton(onPressed: (){}, icon: Icon (icon))
      ],
    );
  }
}
