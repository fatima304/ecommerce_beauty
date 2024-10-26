import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/container_beauty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeautyItemsListView extends StatelessWidget {
  const BeautyItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 33.r),
              child: ContainerBeautyItem(),
            );
          }),
    );
  }
}
