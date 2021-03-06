import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomCheckbox({required this.tabController, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (bool? newValue) {}),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
