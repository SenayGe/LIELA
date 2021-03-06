import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';
import 'package:liela/Screens/onboarding/widgets/custom_header.dart';
import 'package:liela/Screens/onboarding/widgets/custom_text_field.dart';
import 'package:liela/cubits/signup/signup_cubit.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Email extends StatelessWidget {
  final TabController tabController;
  const Email({required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomHeader(
                  tabController: tabController,
                  text: 'Add your email',
                ),
                SizedBox(
                  height: 50.0,
                ),
                CustomTextField(
                  tabController: tabController,
                  text: 'johndoe@gmail.com',
                  onChanged: (value) {
                    context.read<SignupCubit>().emailChanged(value);
                  },
                ),
                SizedBox(
                  height: 50.0,
                ),
                CustomHeader(
                  tabController: tabController,
                  text: 'Choose your password',
                ),
                SizedBox(
                  height: 50.0,
                ),
                CustomTextField(
                    tabController: tabController,
                    text: 'password',
                    onChanged: (value) {
                      context.read<SignupCubit>().passwordChanged(value);
                    }),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
            SizedBox(height: 50.0),
            StepProgressIndicator(
              totalSteps: 6,
              currentStep: tabController.index + 1,
              selectedColor: Theme.of(context).primaryColor,
              unselectedColor: Theme.of(context).backgroundColor,
            ),
            SizedBox(height: 30.0),
            CustomButton(
              tabController: tabController,
              text: 'NEXT',
            )
          ],
        ),
      );
    });
  }
}
