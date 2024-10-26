import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        hintText: 'Search',
      prefixIcon: Icons.search,
      height: 0.sp,
      hintStyle: AppTextStyle.font14PinkSemiBold,
    );
  }
}
