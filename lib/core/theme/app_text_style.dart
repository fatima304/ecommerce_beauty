
import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class AppTextStyle{
  static  TextStyle font80WhiteBold= TextStyle(
    fontSize: 80.sp ,
    fontWeight: FontWeightHelper.bold ,
    color: Colors.white
  );

  static  TextStyle font18BlackSemiBold= TextStyle(
    fontSize: 18.sp ,
    fontWeight: FontWeightHelper.semiBold ,
    color: Colors.black
  );

  static  TextStyle font28PinkExtraBold= TextStyle(
    fontSize: 28.sp ,
    fontWeight: FontWeightHelper.extraBold ,
    color: AppColor.mainPink
  );

  static  TextStyle font14DarkGreySemiBold= TextStyle(
    fontSize: 14.sp ,
    fontWeight: FontWeightHelper.semiBold ,
    color: AppColor.darkGrey
  );

  static  TextStyle font18PinkSemiBold= TextStyle(
      fontSize: 18.sp ,
      fontWeight: FontWeightHelper.semiBold ,
      color: AppColor.mainPink
  );

  static  TextStyle font32PinkSemiBold= TextStyle(
      fontSize: 32.sp ,
      fontWeight: FontWeightHelper.semiBold ,
      color: AppColor.mainPink
  );

  static  TextStyle font24BlackMedium= TextStyle(
      fontSize: 24.sp ,
      fontWeight: FontWeightHelper.medium ,
      color: Colors.black
  );
  static  TextStyle font20BlackSemiBold= TextStyle(
      fontSize: 20.sp ,
      fontWeight: FontWeightHelper.semiBold ,
      color: Colors.black
  );
}