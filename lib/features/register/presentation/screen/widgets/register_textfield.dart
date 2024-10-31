import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:beauty_ecommerce/features/register/presentation/manager/register_cubit.dart';
import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({super.key});


  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          // CustomTextFormField(
          //   hintText: 'Full Name',
          //   prefixIcon: Icons.person,
          // ),
          CustomTextFormField(
            hintText: 'Email',
            prefixIcon: Icons.email,
            controller: cubit.emailController,
            validator: (value){
              if(value!.isEmpty ){
                return 'Enter valid email';
              }
            },
          ),
          CustomTextFormField(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            controller: cubit.passwordController,
            validator: (value){
              if(value!.isEmpty ){
                return 'Enter valid password';
              }
            },
          ),
          CustomTextFormField(
            hintText: 'Confirm Password',
            prefixIcon: Icons.lock,
            controller: cubit.confirmPasswordController,
            validator: (value){
              if(cubit.confirmPasswordController.text !=cubit.passwordController.text ){
                return 'Confirm password should be ass password ';
              }
            },
          ),
        ],
      ),
    );
  }
}
