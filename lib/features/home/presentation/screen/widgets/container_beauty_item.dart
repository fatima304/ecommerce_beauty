import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBeautyItem extends StatelessWidget {
  const ContainerBeautyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 241.w,
            height: 301.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5, 5),
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lip Stick',
                      style: AppTextStyle.font24BlackSemiBold.copyWith(
                        fontFamily: FontFamilyHelper.leagueSpartanFont,
                      ),
                    ),
                    Text(
                      '\$ 30',
                      style: AppTextStyle.font24BlackSemiBold.copyWith(
                        fontFamily: FontFamilyHelper.leagueSpartanFont,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.mainPink,
                      ),
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: AppTextStyle.font16WhiteSemiBold.copyWith(
                              fontFamily: FontFamilyHelper.leagueSpartanFont),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.cherryBlossomPink,
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              AppImages.beautyLogo,
              width: 196.w,
              height: 270.h,
            ),
          ),
        ],
      ),
    );
  }
}
