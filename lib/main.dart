import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/Screens/onboarding/onboarding_screen.dart';
import 'package:liela/Screens/user/user_screen.dart';
import 'package:liela/blocs/images/images_bloc.dart';
import 'package:liela/blocs/swipe/swipe_bloc.dart';
import 'package:liela/repositories/auth/auth_repository.dart';
import 'package:liela/repositories/database/database_repository.dart';
import 'package:liela/screens.dart';
import 'package:liela/config/app_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blocs/auth/auth_bloc.dart';
import 'models/models.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => AuthRepository(),
        )
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (_) =>
                    AuthBloc(authRepository: context.read<AuthRepository>())),
            BlocProvider(
                create: (_) =>
                    SwipeBloc()..add(LoadUsersEvent(users: User.users))),
            BlocProvider(
                create: (_) =>
                    ImagesBloc(databaseRepository: DatabaseRepository())
                      ..add(LoadImages()))
          ],
          child: MaterialApp(
            title: 'Liela dating app',
            theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                primarySwatch: Colors.grey,
                textTheme: TextTheme(
                  headline1: GoogleFonts.montserrat(
                      fontSize: 97,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -1.5),
                  headline2: GoogleFonts.montserrat(
                      fontSize: 61,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.5),
                  headline3: GoogleFonts.montserrat(
                      fontSize: 48, fontWeight: FontWeight.w400),
                  headline4: GoogleFonts.montserrat(
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.25),
                  headline5: GoogleFonts.montserrat(
                      fontSize: 24, fontWeight: FontWeight.w400),
                  headline6: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.15),
                  subtitle1: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15),
                  subtitle2: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1),
                  bodyText1: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5),
                  bodyText2: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.25),
                  button: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.25),
                  caption: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.4),
                  overline: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5),
                )),
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: OnboardingScreen.routeName,
          )),
    );
  }
}
