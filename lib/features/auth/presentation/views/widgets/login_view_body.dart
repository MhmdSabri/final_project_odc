import 'package:final_project_odc/constants.dart';
import 'package:final_project_odc/core/utils/app_color.dart';
import 'package:final_project_odc/core/utils/app_text_styles.dart';
import 'package:final_project_odc/core/widgets/custom_button.dart';
import 'package:final_project_odc/core/widgets/custom_text_field.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
                hintText: 'البريد الالكترونى',
                textInputType: TextInputType.emailAddress),
            SizedBox(height: 16),
            CustomTextFormField(
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
                hintText: 'كلمة المرور ',
                textInputType: TextInputType.visiblePassword),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColor.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            const SizedBox(
              height: 16,
            ),
           DontHaveAccountWidget(),
          ],
        ),
      ),
    );
  }
}
