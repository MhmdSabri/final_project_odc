import 'package:final_project_odc/core/utils/app_color.dart';
import 'package:final_project_odc/core/utils/app_text_styles.dart';
import 'package:final_project_odc/features/auth/presentation/views/signup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
            text: 'قم بإنشاء حساب',
            style: TextStyles.semiBold16.copyWith(color: AppColor.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
