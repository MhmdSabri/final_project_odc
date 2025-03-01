
import 'package:final_project_odc/core/helper_functions/get_currency.dart';
import 'package:final_project_odc/features/checkout/domain/entites/order_entity.dart';

import 'details.dart';

class Amount {
  String? total;
  String? currency;
  DetailsEntity? details;

  Amount({this.total, this.currency, this.details});

  factory Amount.fromEntity(OrderInputEntity entity) {
    return Amount(
      total: entity.calculateTotalPriceAfterDiscountAndShipping().toString(),
      currency: getCurrency(),
      details: DetailsEntity.fromEntity(entity),
    );
  }

  toJson() => {
        'total': total,
        'currency': currency,
        'details': details!.toJson(),
      };
}
