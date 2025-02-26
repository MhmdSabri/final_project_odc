import 'package:final_project_odc/core/utils/app_color.dart';
import 'package:final_project_odc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColor.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyles.bold19.copyWith(
              color: Colors.white,
                
          ),)
        ));
  }
}