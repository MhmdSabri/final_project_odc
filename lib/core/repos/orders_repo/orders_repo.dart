import 'package:dartz/dartz.dart';
import 'package:final_project_odc/features/checkout/domain/entites/order_entity.dart';

import '../../errors/failures.dart';

abstract class OrdersRepo {
  Future<Either<Failure, void>> addOrder({required OrderInputEntity order});
}