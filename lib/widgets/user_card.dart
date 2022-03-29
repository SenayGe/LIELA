import 'package:flutter/material.dart';
import 'package:liela/models/user_model.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(user.imageUrls[0]),
                ),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5), offset: Offset(3, 3), spreadRadius: 4, blurRadius: 4),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  )
              ),
            ),
            Positioned(
              bottom: 30,
              left: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}, ${user.age}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                      ),
                  SizedBox(height: 5,),
                  Text(
                    '${user.jobTitle}',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  Row(
                    children: [
                      UserSmallPic(imgUrl: user.imageUrls[1],),
                      UserSmallPic(imgUrl: user.imageUrls[4],),
                      UserSmallPic(imgUrl: user.imageUrls[3],),
                      UserSmallPic(imgUrl: user.imageUrls[2],),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserSmallPic extends StatelessWidget {
  const UserSmallPic({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8.0,
        right: 8.0,
      ),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage (imgUrl),
        ),
        borderRadius: BorderRadius.circular(5.0)
      ),
    );
  }
}
