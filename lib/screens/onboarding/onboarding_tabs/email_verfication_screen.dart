import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';
import 'package:liela/Screens/onboarding/widgets/custom_header.dart';
import 'package:liela/Screens/onboarding/widgets/custom_text_field.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class EmailVerification extends StatelessWidget {
  final TabController tabController;
  const EmailVerification({ required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textConroller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomHeader(tabController: tabController, text: 'Enter email verification code',),
              SizedBox(height: 50.0,),
              CustomTextField(tabController: tabController, text: 'Verification code', textEditingController: textConroller,),
            ],
          ),
          SizedBox(height: 100.0),
          StepProgressIndicator(
            totalSteps: 6,
            currentStep: tabController.index + 1,
            selectedColor: Theme.of(context).primaryColor,
            unselectedColor: Theme.of(context).backgroundColor,
          ),
          SizedBox(height: 30.0),
          CustomButton(tabController: tabController, text: 'CONTINUE',)
        ],
      ),
    );
  }
}
