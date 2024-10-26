import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/brand_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandItemsListView extends StatefulWidget {
  const BrandItemsListView({super.key});

  @override
  State<BrandItemsListView> createState() => _BrandItemsListViewState();
}

class _BrandItemsListViewState extends State<BrandItemsListView> {
  final List<String> brandNames = ['Popular', 'Indoor', 'Outdoor', 'Garden'];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: brandNames.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 10.r),
              child: BrandItem(
                brandName: brandNames[index],
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                colorContainer: currentIndex == index
                    ? AppColor.mainPink
                    : AppColor.cherryBlossomPink,
                shadowColor: currentIndex == index ? Colors.grey : Colors.white,
                textStyle: currentIndex != index
                    ? AppTextStyle.font14PinkSemiBold.copyWith(
                        fontFamily: FontFamilyHelper.leagueSpartanFont)
                    : AppTextStyle.font14WhiteSemiBold.copyWith(
                        fontFamily: FontFamilyHelper.leagueSpartanFont),
              ),
            );
          }),
    );
  }
}
