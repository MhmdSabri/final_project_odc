
import 'package:final_project_odc/core/repos/orders_repo/orders_repo.dart';
import 'package:final_project_odc/core/repos/orders_repo/orders_repo_impl.dart';
import 'package:final_project_odc/core/repos/products_repo/products_repo.dart';
import 'package:final_project_odc/core/repos/products_repo/products_repo_impl.dart';
import 'package:final_project_odc/core/services/data_service.dart';
import 'package:final_project_odc/core/services/firebase_auth_service.dart';
import 'package:final_project_odc/core/services/firestore_service.dart';
import 'package:final_project_odc/features/auth/data/repos/auth_repo_impl.dart';
import 'package:final_project_odc/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(
      getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImpl(
      getIt<DatabaseService>(),
    ),
  );
}
