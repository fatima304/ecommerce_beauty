import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../manager/login_cubit.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LoginCubit.get(context);
    return Form(
      key: cubit.globalKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Email',
            prefixIcon: Icons.person,
            controller: cubit.emailController,
            validator: (value){
              if(value==null || value.isEmpty){
                return "Enter your email";
              }
            },
          ),
         
          CustomTextFormField(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            controller: cubit.passwordController,
            validator: (value){
              if(value==null || value.isEmpty){
                return "Enter your password";
              }
            }, obscureText: cubit.isObscurePassword,
              suffixIcon: IconButton(
                onPressed: (){
                  cubit.changeObscurePassword();
                },
                icon: Icon(
                  cubit.isObscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
