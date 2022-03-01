
import 'package:flutter/material.dart';

import '../screens.dart';

class AppRouter {
  static Route onGenerateRoute (RouteSettings settings ){
    print ('The route is ${settings.name}');

    switch (settings.name){
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LoginScreen.route();
      default:
        return _errorRoute();

    }

  }

 // static Route _errorRoute() {}

}