import 'package:flutter/material.dart';
import 'package:taskzy/core/app_routes.dart';
import 'package:taskzy/home/home_view.dart';
import 'package:taskzy/onboarding/onboarding_view.dart';
import 'package:taskzy/splash/splash_view.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskzy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.white,
        fontFamily: "Poppins",
      ),
      routes: {
        AppRoutes.SPLASH: (ctx) => SplashView(),
        AppRoutes.HOME: (ctx) => HomeView(),
        AppRoutes.ONBOARDING: (ctx) => OnBoardingView(),
      },
    );
  }
}
