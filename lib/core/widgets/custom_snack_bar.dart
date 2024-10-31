import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../theme/app_color.dart';

void showSnackBar({required BuildContext context , required String message , Color? backgroundColor}){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 5),
        padding:  const EdgeInsets.symmetric(horizontal: 8 ,vertical: 4),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20) ,
        ),
        backgroundColor:AppColor.mainPink,
        content: Text(message ,style: AppTextStyle.font18BlackSemiBold,)
    ),
  );
}