import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/color_palette.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/product_details.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFFE3F6E8),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetails(),
          SizedBox(height: 25),
          ColorPalette(),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeightHelper.light,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "\$40.99",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeightHelper.semiBold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // primary: Colors.green.shade800,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
