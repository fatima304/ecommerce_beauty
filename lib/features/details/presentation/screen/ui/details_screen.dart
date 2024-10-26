import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/details_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Details',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeightHelper.regular,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: AppColor.midGrey,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        color: Colors.black,
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 30,
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/3.jpg',
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 30),
              DetailsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
