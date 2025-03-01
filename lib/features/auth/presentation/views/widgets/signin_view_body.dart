
import 'package:final_project_odc/constants.dart';
import 'package:final_project_odc/core/utils/app_colors.dart';
import 'package:final_project_odc/core/utils/app_text_styles.dart';
import 'package:final_project_odc/core/widgets/custom_button.dart';
import 'package:final_project_odc/core/widgets/custom_text_field.dart';
import 'package:final_project_odc/core/widgets/password_field.dart';
import 'package:final_project_odc/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dont_have_account_widget.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizintalPadding,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
               SizedBox(
                height: 24.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
               SizedBox(
                height: 16.h,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
               SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 33.h,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    context.read<SigninCubit>().signin(email, password);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل دخول',
              ),
               SizedBox(
                height: 33.h,
              ),
              const DontHaveAnAccountWidget(),
              
              
             
             
             
                
              
            ],
          ),
        ),
      ),
    );
  }
}