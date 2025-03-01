import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'order_summry_widget.dart';
import 'shipping_address_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 24.h,
        ),
        const OrderSummryWidget(),
         SizedBox(
          height: 16.h,
        ),
        ShippingAddressWidget(
          pageController: pageController,
        ),
      ],
    );
  }
}
