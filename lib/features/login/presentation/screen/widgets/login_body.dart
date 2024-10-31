import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/core/widgets/custom_snack_bar.dart';
import 'package:beauty_ecommerce/features/login/presentation/manager/login_cubit.dart';
import 'package:beauty_ecommerce/features/login/presentation/manager/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_widget.dart';
import '../../../../../core/widgets/custom_container_auth.dart';
import 'login_text_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if(state is LoginLoading){
          showSnackBar(context: context, message: "Loading...");
        }else if(state is LoginSuccess){
          Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
        }else if(state is LoginFailed){
          showSnackBar(context: context, message: state.error);
        }
      },
      builder: (context, state) {
        return AuthWidget(
          authBody: CustomContainerAuth(
            onPressed: () {
              validateThenLogin(context);
            },
            welText: 'Welcome Back!',
            buttonText: 'LOGIN',
            accountText: 'Login to your account',
            account: 'Don\'t have an account?',
            loginOrRegister: 'SignUp',
            onTap: (){
              Navigator.of(context).pushNamed(Routes.registerScreen);
            },
            authField: LoginTextField(),
          ),
        );
      },
    );
  }

  void validateThenLogin(BuildContext context) {
    var cubit = LoginCubit.get(context);
    if (cubit.globalKey.currentState!.validate()) {
      cubit.login();
    }
  }
}
