import 'package:flutter/material.dart';

class ReactionButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  ReactionButton({
    Key? key,
    required this.width,
    required this.height,
    //required this.size,
    required this.color,
    required this.icon,
    required this.iconColor,
    this.iconSize = 40.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withAlpha(50),
                blurRadius: 4,
                spreadRadius:4,
                offset: Offset.fromDirection( -3,-3)
            )]
      ),
      child: Icon( icon, size: iconSize, color: iconColor,),
    );
  }
}