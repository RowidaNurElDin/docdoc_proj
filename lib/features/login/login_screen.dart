import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/widgets/sized_box_helper.dart';
import 'package:untitled1/features/login/widgets/email_and_password_widget.dart';
import 'package:untitled1/features/login/widgets/forgot_password_widget.dart';
import 'package:untitled1/features/login/widgets/login_button_widget.dart';
import 'package:untitled1/features/login/widgets/remember_me_widget.dart';
import 'package:untitled1/features/login/widgets/terms_and_conditions_widget.dart';
import 'package:untitled1/features/login/widgets/text_and_sign_up_button_widget.dart';
import 'package:untitled1/features/login/widgets/welcome_and_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSizedBox(20.h),
                  const WelcomeTextWidget(),
                  verticalSizedBox(20.h,),
                  const EmailAndPasswordWidget(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RememberMeWidget(),
                      ForgetPasswordWidget()
                      
                    ],
                  ),
                  verticalSizedBox(40.h,),
                  const LoginButton(),
                  verticalSizedBox(30.h,),
                  const TermsAndConditionsWidget(),
                  verticalSizedBox(30.h,),
                  const TextAndSignUpButtonWidget()

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
