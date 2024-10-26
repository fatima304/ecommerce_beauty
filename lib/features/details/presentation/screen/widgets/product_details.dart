import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Aloe Tiki",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeightHelper.semiBold,
            fontFamily: FontFamilyHelper.sourceSerifFont,
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "colourpop",
              style: TextStyle(
                fontSize: 19.5,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            Text(
              "Lip Liner",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          "Succulents are known for their drought tolerant nature. They grow best when watered less frequently. Over watering will lead them to rot easily. Make sure they receive ample indirect light...",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeightHelper.regular,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
