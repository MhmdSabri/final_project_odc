import 'package:final_project_odc/core/widgets/custom_progress_hud.dart';
import 'package:final_project_odc/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:final_project_odc/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is SigninLoading ? true : false,
            child: SigninViewBody());
      },
    );
  }
}
