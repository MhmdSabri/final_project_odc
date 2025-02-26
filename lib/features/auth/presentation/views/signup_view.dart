import 'package:final_project_odc/core/widgets/custom_app_bar.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: ' حساب جديد'),
      body: SignupViewBody(
        
      ),
    );
  }
}