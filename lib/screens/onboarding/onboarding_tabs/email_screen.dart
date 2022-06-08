import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';
import 'package:liela/Screens/onboarding/widgets/custom_header.dart';
import 'package:liela/Screens/onboarding/widgets/custom_text_field.dart';

class Email extends StatelessWidget {
  final TabController tabController;
  const Email({ required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomHeader(tabController: tabController, text: 'Add your email',),
              SizedBox(height: 50.0,),
              CustomTextField(tabController: tabController, text: 'johndoe@gmail.com'),
            ],
          ),
          SizedBox(height: 50.0),
          CustomButton(tabController: tabController, text: 'CONTINUE',)
        ],
      ),
    );
  }
}
