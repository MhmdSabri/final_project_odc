import 'package:final_project_odc/core/widgets/custom_app_bar.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: LoginViewBody(
        

      ),
    );
  }

  
}

