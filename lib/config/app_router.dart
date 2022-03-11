
import 'package:flutter/material.dart';

import '../screens.dart';

class AppRouter {
  static Route generateRoute (RouteSettings settings ){

    // For passing arguments and values
    final args = settings.arguments;

    print ('The route is ${settings.name}');

    switch (settings.name){
      // case '/':
      //   return MaterialPageRoute(builder: (_) => HomeScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/LoginScreen':
        if (args is String){
          return MaterialPageRoute(
              builder: (_) => LoginScreen(
                data: args,
              )
          );
        }
        // If args is not of the correct type
        return _errorRoute(); //TODO: Define _errorRoutee()
      // case LoginScreen.route();
      default:
        return _errorRoute();

    }

  }

  static Route _errorRoute (){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text ('Error'),
        ),
        body: Center(child: Text('ERROR')),
      );
    });

  }

}