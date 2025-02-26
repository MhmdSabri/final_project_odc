import 'package:final_project_odc/features/auth/presentation/views/login_view.dart';
import 'package:final_project_odc/features/auth/presentation/views/signup_view.dart';
import 'package:final_project_odc/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:final_project_odc/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());

   case SignupView.routeName:
      return MaterialPageRoute(builder: (_) => const SignupView());   

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}