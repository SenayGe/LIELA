import 'package:flutter/material.dart';
import 'package:liela/widgets/custom_appBar.dart';

import 'onboarding_tabs/start_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  static const List<Tab> tabs = <Tab>[
    Tab(
      text: 'start',
    ),
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
            appBar: CustomAppBar(hasActions: false),
            body: TabBarView(
              children: [
                Start(tabController: tabController,),
              ],
            ),
          );
        }));
  }
}
