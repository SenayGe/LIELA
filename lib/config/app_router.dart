
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/cubits/signup/signup_cubit.dart';
import 'package:liela/repositories/auth_repository.dart';
import 'package:liela/screens.dart';
import 'package:liela/models/models.dart';

import '../screens.dart';

class AppRouter {
  static Route generateRoute (RouteSettings settings ){

    // For passing arguments and values
    final args = settings.arguments;

    print ('The route is ${settings.name}');

    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case UsersScreen.routeName:
        return MaterialPageRoute(builder: (_) => UsersScreen(user: args as User));
      case OnboardingScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (_) => SignupCubit(authRepository: context.read<AuthRepository>()),
                child: OnboardingScreen(),
            ),
        );
      case MatchesScreen.routeName:
        return MaterialPageRoute(builder: (_) => MatchesScreen());
      case ChatScreen.routeName:
        return MaterialPageRoute(builder: (_) => ChatScreen(userMatch: args as UserMatch));
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
    /*case '/LoginScreen':
        if (args is String){
          return MaterialPageRoute(
              builder: (_) => LoginScreen(
                data: args,
              )
          );
        }c
        // If args is not of the correct type
        return _errorRoute(); //TODO: Define _errorRoutee()*/

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