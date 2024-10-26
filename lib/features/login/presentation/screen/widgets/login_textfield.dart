import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  const LoginTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'Full Name',
          preficIcon: Icons.person,
        ),
       
        CustomTextFormField(
          hintText: 'Password',
          preficIcon: Icons.lock,
        ),
      ],
    );
  }
}
