import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/onboarding_tabs/email_screen.dart';
import 'package:liela/Screens/onboarding/onboarding_tabs/email_verfication_screen.dart';
import 'package:liela/Screens/onboarding/onboarding_tabs/gender_screen.dart';
import 'package:liela/Screens/onboarding/widgets/custom_checkbox.dart';
import 'package:liela/widgets/custom_appBar.dart';

import 'onboarding_tabs/bio_screen.dart';
import 'onboarding_tabs/pics_screen.dart';
import 'onboarding_tabs/start_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  static const List<Tab> tabs = <Tab>[
    Tab(
      text: 'start',
    ),
    Tab(text: 'email',),
    Tab (text: 'email-verification'),
    Tab(text: 'gender',),
    Tab(text: 'pics',),
    Tab(text: 'bio',),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController =
              DefaultTabController.of(context)!; // its never null
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });

          return Scaffold(
            appBar: CustomAppBar(title: 'LIELA',hasActions: false),
            body: TabBarView(
              children: [
                Start(tabController: tabController,),
                Email(tabController: tabController),
                EmailVerification(tabController: tabController),
                Gender(tabController: tabController),
                Pics(tabController: tabController),
                Bio(tabController: tabController)
                
              ],
            ),
          );
        }));
  }
}
