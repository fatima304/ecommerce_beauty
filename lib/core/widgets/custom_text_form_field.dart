import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.preficIcon,
  });

  bool obscureText;
  final String hintText;
  final IconData preficIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            fillColor: AppColor.lightGrey,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeightHelper.regular,
              color: Colors.black,
            ),
            prefixIcon: Icon(
              preficIcon,
              color: AppColor.darkPink,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          obscureText: obscureText,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
