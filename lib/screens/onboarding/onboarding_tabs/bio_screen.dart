import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/widgets/tag_container.dart';
import 'package:liela/Screens/onboarding/widgets/widgets.dart';

class Bio extends StatelessWidget {
  final TabController tabController;
  const Bio({ required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
      child: Column(
        children: [
          Column(

            children: [
              CustomHeader(tabController: tabController, text: 'Describe yourself in a few words'),
              SizedBox(height: 30.0,),
              CustomTextField(tabController: tabController, text: 'Your BIO'),
              SizedBox(height: 30.0,),
              CustomHeader(tabController: tabController, text: 'What are your interests'),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTagContainer(tabcontroller: tabController, text: 'Sports'),
                  CustomTagContainer(tabcontroller: tabController, text: 'Mezmurrr'),
                  CustomTagContainer(tabcontroller: tabController, text: 'Football'),
                  CustomTagContainer(tabcontroller: tabController, text: 'Sports'),
                ],
              ),
              Row(
                children: [
                  CustomTagContainer(tabcontroller: tabController, text: 'Football'),
                  CustomTagContainer(tabcontroller: tabController, text: 'Sports'),
                  CustomTagContainer(tabcontroller: tabController, text: 'Sports'),
                  CustomTagContainer(tabcontroller: tabController, text: 'Mezmurrr'),

                ],
              )
            ],
          ),

          SizedBox(height: 50.0),
          CustomButton(tabController: tabController, text: 'CONTINUE',)
        ],
      ),

    );;
  }
}
