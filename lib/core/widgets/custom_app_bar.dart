import 'package:final_project_odc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(context, {required String title}) {
    return AppBar(
      backgroundColor: Colors.white ,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new)),
      centerTitle: true,
      title:  Text(title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19
      ),
      
    );
  }