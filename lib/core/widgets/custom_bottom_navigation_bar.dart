import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColor.cherryBlossomPink,
          ),
          child: BottomNavigationBar(
              currentIndex: 0,
              onTap: (index) {},
              unselectedFontSize: 0.sp,
              unselectedItemColor: Colors.black,
              unselectedIconTheme: IconThemeData(
                size: 30.sp,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: '',
                  activeIcon: activeColor(Icons.home),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: '',
                  activeIcon: activeColor(Icons.shopping_cart),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: '',
                    activeIcon: activeColor(Icons.favorite)),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined),
                  label: '',
                  activeIcon: activeColor(Icons.person),
                ),
              ]),
        ),
      ),
    );
  }

  Widget activeColor(IconData icon) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.mainPink,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Icon(
          icon,
          size: 30.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
