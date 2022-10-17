import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';
import 'package:liela/Screens/onboarding/widgets/custom_header.dart';
import 'package:liela/Screens/onboarding/widgets/image_container.dart';
import 'package:liela/blocs/images/images_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Pics extends StatelessWidget {
  final TabController tabController;
  const Pics({required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
      child: Column(
        children: [
          CustomHeader(
              tabController: tabController, text: 'Upload your photos'),
          BlocBuilder<ImagesBloc, ImagesState>(builder: (context, state) {
            if (state is ImagesLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is ImagesLoaded) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageContainer(tabController: tabController),
                  CustomImageContainer(tabController: tabController),
                  CustomImageContainer(tabController: tabController),
                ],
              );
            }
            else{
              return Text('Error');
            }
          }),
          SizedBox(height: 100.0),
          StepProgressIndicator(
            totalSteps: 6,
            currentStep: tabController.index + 1,
            selectedColor: Theme.of(context).primaryColor,
            unselectedColor: Theme.of(context).backgroundColor,
          ),
          SizedBox(height: 30.0),
          CustomButton(
            tabController: tabController,
            text: 'CONTINUE',
          )
        ],
      ),
    );
  }
}
