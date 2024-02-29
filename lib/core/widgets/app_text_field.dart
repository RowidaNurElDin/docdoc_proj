import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AppTextFormField extends StatefulWidget {
  final String hintText ;
   bool? isObscure;
   Widget? suffixIcon;
   final TextEditingController controller;
   final String? Function(String?)? validator;
   AppTextFormField({super.key,
     required this.hintText, this.isObscure ,
     required this.controller, this.validator,
   this.suffixIcon});

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isObscure??false,
      cursorColor: AppColors.primaryBlueColor,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]! , width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16.r))
        ) ,
       focusedBorder :OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primaryBlueColor , width: 1),
              borderRadius: BorderRadius.all(Radius.circular(16.r))
          ) ,
       errorBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.red[800]! , width: 1),
           borderRadius: BorderRadius.all(Radius.circular(16.r))
       ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red[800]! , width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16.r))
        ),
        hintText: widget.hintText,
        filled: true,
        suffixIcon: widget.suffixIcon,
        fillColor: AppColors.lightGreyColor,
        hintStyle: TextStyles.font14greyColorRegularWeight.copyWith(
          fontWeight: FontWeight.w400,
          color: Colors.grey[500]
        ),

      ),
      validator: widget.validator,
    );
  }
}
