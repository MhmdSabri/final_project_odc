import 'package:dartz/dartz.dart';
import 'package:final_project_odc/core/errors/failures.dart';
import 'package:final_project_odc/core/repos/orders_repo/orders_repo.dart';
import 'package:final_project_odc/core/services/data_service.dart';
import 'package:final_project_odc/core/utils/backend_endpoint.dart';
import 'package:final_project_odc/features/checkout/data/models/order_model.dart';
import 'package:final_project_odc/features/checkout/domain/entites/order_entity.dart';


class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService dataBaseService;

  OrdersRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, void>> addOrder(
      {required OrderInputEntity order}) async {
    try {
      var orderModel = OrderModel.fromEntity(order);
      await dataBaseService.addData(
        path: BackendEndpoint.addOrder,
        documentId: orderModel.orderId,
        data: orderModel.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}