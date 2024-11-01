import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:beauty_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomContainerAuth extends StatelessWidget {
  const CustomContainerAuth({
    super.key,
    required this.welText,
    required this.onPressed,
    required this.buttonText,
    required this.accountText,
    required this.account,
    required this.authField, required this.loginOrRegister, required this.onTap,
  });

  final String welText;
  final Widget authField;
  final String buttonText;
  final String accountText;
  final String account;
  final String loginOrRegister;
  final void Function()? onPressed;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              welText,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.sourceSerifFont,
              ),
            ),
            Text(
              accountText,
              style: TextStyle(
                fontSize: 26,
                color: AppColor.darkGrey,
                fontWeight: FontWeightHelper.regular,
                fontFamily: FontFamilyHelper.dongleFont,
              ),
            ),
          ],
        ),
        authField,
        Column(
          children: [
            CustomElevatedButton(
              onPressed: onPressed,
              buttonText: buttonText,
            ),
            RichText(text: TextSpan(
              text: account,
                style: AppTextStyle.font24DarkGreyRegular.copyWith(
    fontFamily: FontFamilyHelper.dongleFont
    ),
              children: [
                TextSpan(
                  text: ' $loginOrRegister',
                  style: AppTextStyle.font24PinkRegular.copyWith(
                      fontFamily: FontFamilyHelper.dongleFont
                  ),
                  recognizer: TapGestureRecognizer()..onTap=onTap
                ),
              ]
              ),
            ),
          ],
        )
      ],
    );
  }
}
