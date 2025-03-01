import 'package:final_project_odc/features/auth/presentation/views/signin_view.dart';
import 'package:final_project_odc/features/auth/presentation/views/signup_view.dart';
import 'package:final_project_odc/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:final_project_odc/features/checkout/presentation/views/checkout_view.dart';
import 'package:final_project_odc/features/home/domain/entites/cart_entity.dart';
import 'package:final_project_odc/features/home/presentation/views/main_view.dart';
import 'package:final_project_odc/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:final_project_odc/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case CheckoutView.routeName:
      return MaterialPageRoute(
          builder: (context) => CheckoutView(
                cartEntity: settings.arguments as CartEntity,
              ));
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
