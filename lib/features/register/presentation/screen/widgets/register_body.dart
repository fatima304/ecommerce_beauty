import 'package:beauty_ecommerce/core/widgets/custom_snack_bar.dart';
import 'package:beauty_ecommerce/features/register/presentation/manager/register_state.dart';
import 'package:beauty_ecommerce/features/register/presentation/screen/widgets/register_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../login/presentation/screen/widgets/auth_widget.dart';
import '../../../../login/presentation/screen/widgets/custom_container.dart';
import '../../manager/register_cubit.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if(state is RegisterLoading){
          showSnackBar(context: context, message: 'Loading...');
        }else if(state is RegisterSuccess){
          Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
        }else if(state is RegisterFailed){
          showSnackBar(context: context, message: state.error);

        }
      },
      builder: (context, state) {
        return AuthWidget(
          authBody: CustomContainer(
            onPressed: () {
              validateThenSignUp(context);
            },
            welText: 'Register',
            buttonText: 'Sign Up',
            accountText: 'Create an account',
            createAccount: 'Already have an account? Login',
            authField: RegisterTextField(),
          ),
        );
      },
    );
  }

  void validateThenSignUp(BuildContext context) {
    var cubit = RegisterCubit.get(context);
    if (cubit.formKey.currentState!.validate()) {
      cubit.signUp();
    }
  }
}
