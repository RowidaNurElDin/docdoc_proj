
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/helpers/app_regex.dart';
import 'package:untitled1/core/themes/colors.dart';
import 'package:untitled1/core/widgets/app_text_field.dart';
import 'package:untitled1/core/widgets/sized_box_helper.dart';
import 'package:untitled1/features/login/logic/login_cubit.dart';
import 'package:untitled1/features/login/logic/login_state.dart';
import 'package:untitled1/features/login/widgets/password_validations.dart';

class EmailAndPasswordWidget extends StatefulWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  State<EmailAndPasswordWidget> createState() => _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState extends State<EmailAndPasswordWidget> {
  bool isObscure = true;
   bool hasMinLength = false;
   bool hasUpperCase= false;
   bool hasLowerCase= false;
   bool hasSymbols= false;
   bool hasNumbers= false;

   @override
  void initState() {
     var password = context.read<LoginCubit>().passwordEditingController;
     password.addListener(() {
       setState(() {
         hasMinLength = AppRegex.hasMinLengthRegex(password.text);
         hasUpperCase = AppRegex.hasUpperCaseRegex(password.text);
         hasLowerCase = AppRegex.hasLowerCaseRegex(password.text);
         hasSymbols = AppRegex.hasSymbolsRegex(password.text);
         hasNumbers = AppRegex.hasNumberRegex(password.text);
       });
     }) ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Form(
          key: context.read<LoginCubit>().formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextFormField(
                hintText: "Email",
                controller: context.read<LoginCubit>().emailEditingController,
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return 'Please enter your email';
                  }
                  if(!AppRegex.isEmailValidRegex(email)){
                    return 'Please enter a valid email';
                  }
                  return null;

                },
              ),
              verticalSizedBox(20.h),
              AppTextFormField(
                hintText: "Password",
                isObscure: isObscure,
                controller: context.read<LoginCubit>().passwordEditingController,
                suffixIcon: GestureDetector(
                  onTap: (){
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure ? Icons.remove_red_eye_outlined : Icons.remove_red_eye_sharp,
                    color: AppColors.primaryBlueColor,
                  ),
                ),
                validator:  (password) {
                  if (password == null || password.isEmpty) {
                    return 'Please enter your password';
                  }
                  if(!AppRegex.isPasswordValidRegex( password)){
                    return 'Please enter a valid password';
                  }
                  return null;
                },
              ),
              verticalSizedBox(20.h),
              PasswordValidations(
                hasMinLength: hasMinLength,
                hasUpperCase: hasUpperCase,
                hasLowerCase: hasLowerCase,
                hasSymbols: hasSymbols,
                hasNumbers: hasNumbers,
              ),
            ],
          ),
        );
      },
    );
  }
}
