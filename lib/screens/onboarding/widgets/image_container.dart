import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final TabController tabController;
  const CustomImageContainer({required this.tabController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
      child: Container(
        height: 130,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.symmetric(
                vertical: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1.5),
                horizontal: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1.5))),
        child: Align(
            //alignment: Alignment.bottomRight,
            child: IconButton(
          icon: Icon(Icons.add_circle, color: Colors.pink.shade300),
          onPressed: () {},
        )),
      ),
    );
  }
}
