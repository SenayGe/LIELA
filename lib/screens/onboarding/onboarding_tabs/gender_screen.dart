import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';
import 'package:liela/Screens/onboarding/widgets/custom_checkbox.dart';
import 'package:liela/Screens/onboarding/widgets/custom_header.dart';
import 'package:liela/Screens/onboarding/widgets/custom_text_field.dart';

class Gender extends StatelessWidget {
  final TabController tabController;
  const Gender({ required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

            children: [
              CustomHeader(tabController: tabController, text: 'Your gender',),
              SizedBox(height: 10.0,),
              CustomCheckbox(tabController: tabController, text: "MALE"),
              CustomCheckbox(tabController: tabController, text: "FEMALE"),
              SizedBox(height: 30.0,),
              CustomHeader(tabController: tabController, text: 'Your age',),
              SizedBox(height: 30.0,),
              CustomTextField(tabController: tabController, text: 'age'),
            ],
          ),
          SizedBox(height: 50.0),
          CustomButton(tabController: tabController, text: 'CONTINUE',)
        ],
      ),
    );
  }
}
