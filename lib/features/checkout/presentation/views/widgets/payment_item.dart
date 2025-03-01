import 'package:final_project_odc/core/utils/app_decorations.dart';
import 'package:final_project_odc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.tile, required this.child});

  final String tile;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$tile:',
          style: TextStyles.bold13,
        ),
         SizedBox(
          height: 8.h,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8).w,
          decoration: AppDecorations.greyBoxDecoration,
          child: child,
        ),
      ],
    );
  }
}
