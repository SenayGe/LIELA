import 'package:flutter/material.dart';
import 'package:liela/Screens/onboarding/widgets/custom_button.dart';

class Start extends StatelessWidget {
  final TabController tabController;
  const Start({required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.height / 4,
                child: Image.asset('assets/images/start_screen_logo.png'),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text('Welcome to Liela',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black45,
                      )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                "Maxime mollitia molestiae quas vel sint commodi repudiandae "
                "consequuntur voluptatum laborum numquam blanditiis harum quisquam ",
                style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          CustomButton(tabController: tabController, text: 'START',)
        ],
      ),
    );
  }
}
