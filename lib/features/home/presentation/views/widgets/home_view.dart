import 'package:final_project_odc/core/cubits/products_cubit/products_cubit.dart';
import 'package:final_project_odc/core/repos/products_repo/products_repo.dart';
import 'package:final_project_odc/core/services/get_it_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<ProductsRepo>()),
      child: const HomeViewBody(),
    );
  }
}
