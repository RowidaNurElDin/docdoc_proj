import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/core/routing/routes.dart';
import 'package:untitled1/core/routing/routing_extension.dart';
import 'package:untitled1/core/themes/colors.dart';
import 'package:untitled1/features/login/logic/login_cubit.dart';
import 'package:untitled1/features/login/logic/login_state.dart';

import '../../../core/widgets/app_blue_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              barrierColor: Colors.grey.withOpacity(0.5),
              barrierDismissible: false,
              builder: (context) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.primaryBlueColor,
                ));
              });
        }, success: (loginResponse) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        }, error: (error) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red[900],
              content: Text(error.toString())));
        });
      },
      builder: (context, state) {
        return RoundedCornersPrimaryColoredButton(
            buttonText: "Login",
            onTap: () {
              context.read<LoginCubit>().validateThenLogin();
            });
      },
    );
  }
}
