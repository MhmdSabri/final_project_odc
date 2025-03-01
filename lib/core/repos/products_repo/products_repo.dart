import 'package:dartz/dartz.dart';
import 'package:final_project_odc/core/errors/failures.dart';

import '../../entities/product_entity.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
}
