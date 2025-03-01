import 'package:final_project_odc/core/services/shared_preferences_dingleton.dart';
import 'package:final_project_odc/core/utils/app_images.dart';
import 'package:final_project_odc/features/auth/presentation/views/signin_view.dart';
import 'package:final_project_odc/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    ExcuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesSplashLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
        // Center(child: Text("Splash Screen")),
      ],
    );
  }

  void ExcuteNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool("kIsOnBoardingViewSeen");

    Future.delayed(Duration(seconds: 3), () {
      if(isOnBoardingViewSeen){
        
      Navigator.pushReplacementNamed(context, SigninView.routeName);
      }else{
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}