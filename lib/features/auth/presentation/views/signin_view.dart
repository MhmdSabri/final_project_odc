import 'package:final_project_odc/core/services/get_it_service.dart';
import 'package:final_project_odc/core/widgets/custom_app_bar.dart';
import 'package:final_project_odc/features/auth/domain/repos/auth_repo.dart';
import 'package:final_project_odc/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'SigninView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل الدخول'),
        body: SignInViewBodyBlocConsumer(),
      ),
    );
  }
}


