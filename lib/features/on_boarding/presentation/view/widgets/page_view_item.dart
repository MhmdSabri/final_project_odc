import 'package:final_project_odc/constants.dart';
import 'package:final_project_odc/core/services/shared_preferences_singleton.dart';
import 'package:final_project_odc/features/auth/presentation/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroungImage,
      required this.subTitle,
      required this.title,
      required this.isVisible});

  final String image, backgroungImage;
  final String subTitle;
  final Widget title;

  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroungImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(SigninView.routeName);
                  },
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: const Text("تخط"),
                  ),
                ),
              ),
            ],
          ),
        ),
         SizedBox(height: 64.h),
        title,
         SizedBox(height: 24.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
