import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomTagContainer extends StatelessWidget {
  final TabController tabcontroller;
  final String text;
  const CustomTagContainer({required this.tabcontroller, required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 8),
      child: Container(
        height: 35,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // border: BorderDirectional(
          //   top: BorderSide(
          //     color: Colors.pink.shade300,
          //     width: 1.0
          //   ),
          //     bottom: BorderSide(
          //       color: Colors.purpleAccent,
          //         width: 1.0
          //     )
          //
          // ),
          gradient: LinearGradient (
            colors: [Colors.pink.shade300, Colors.purpleAccent],
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.5),
          child: Container (
            height: 25,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white

            ),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                text,
                style: TextStyle(color: Colors.black54,fontSize: 15.0),
              ),
            ),
          ),
        )

      ),
    );
  }
}
