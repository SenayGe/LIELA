import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  const CustomButton({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        child: Text ('Start')
    );
  }
}
