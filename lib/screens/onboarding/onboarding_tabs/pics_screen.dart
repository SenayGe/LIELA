import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';
import 'package:liela/Screens/onboarding/widgets/custom_header.dart';
import 'package:liela/Screens/onboarding/widgets/image_container.dart';

class Pics extends StatelessWidget {
  final TabController tabController;
  const Pics({ required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
      child: Column(
        children: [
          CustomHeader(tabController: tabController, text: 'Upload your photos'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageContainer(tabController: tabController),
              CustomImageContainer(tabController: tabController),
              CustomImageContainer(tabController: tabController),
            ],
          ),

          SizedBox(height: 50.0),
          CustomButton(tabController: tabController, text: 'CONTINUE',)
        ],
      ),

    );
  }
}
