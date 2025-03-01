import 'package:final_project_odc/core/services/get_it_service.dart';
import 'package:final_project_odc/core/widgets/custom_app_bar.dart';
import 'package:final_project_odc/features/auth/domain/repos/auth_repo.dart';
import 'package:final_project_odc/features/auth/presentation/cubits/signup_cubits/signup_cubit.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/signup_View_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: ' حساب جديد'),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}


