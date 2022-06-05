import 'package:flutter/material.dart';
import 'package:liela/widgets/custom_appBar.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(hasActions: false);
  }
}
