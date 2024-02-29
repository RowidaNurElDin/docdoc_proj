import 'package:flutter/material.dart';
import 'package:untitled1/core/themes/colors.dart';
import 'package:untitled1/core/themes/text_styles.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        child: Text(
            "Forgot Password?",
          style: TextStyles.font14greyColorRegularWeight.copyWith(
            color: AppColors.primaryBlueColor
          ),
        )
    );
  }
}
