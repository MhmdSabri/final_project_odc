import 'package:dots_indicator/dots_indicator.dart';
import 'package:final_project_odc/constants.dart';
import 'package:final_project_odc/core/services/shared_preferences_dingleton.dart';
import 'package:final_project_odc/core/utils/app_color.dart';
import 'package:final_project_odc/core/widgets/custom_button.dart';
import 'package:final_project_odc/features/auth/presentation/views/signin_view.dart';
import 'package:final_project_odc/features/on_boarding/presentation/view/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
        setState(() {});
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentPage == 1
                ? AppColor.primaryColor
                : AppColor.primaryColor.withOpacity(0.5),
            activeColor: AppColor.primaryColor,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: KHorizintalPadding),
            child: CustomButton(
                onPressed: () {
                  Prefs.setBool(kIsOnBoardingViewSeen, true);

                  Navigator.of(context)
                      .pushReplacementNamed(SigninView.routeName);
                },
                text: "ابدأ الان"),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
