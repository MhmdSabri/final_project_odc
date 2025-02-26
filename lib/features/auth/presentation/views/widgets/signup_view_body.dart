import 'package:final_project_odc/constants.dart';
import 'package:final_project_odc/core/widgets/custom_button.dart';
import 'package:final_project_odc/core/widgets/custom_text_field.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, userName, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  // onSaved: (value) {
                  //   userName = value!;
                  // },
                  hintText: 'الاسم كامل',
                  textInputType: TextInputType.name),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 16,
              ),
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
              TermsAndConditionsWidget(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                onPressed: () {},
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(
                height: 15,
              ),
              const HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
