import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomHeader({Key? key, required this.tabController, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
