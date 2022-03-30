import 'package:flutter/material.dart';
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