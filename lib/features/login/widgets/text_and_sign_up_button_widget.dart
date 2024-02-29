import '../../../core/themes/colors.dart';
import '../../../core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TextAndSignUpButtonWidget extends StatelessWidget {
  const TextAndSignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        style: TextStyles.font14greyColorRegularWeight.copyWith(
          height: 1.5,
        ),
        children: [
           TextSpan(text: 'Already have an account yet? ',
             style: TextStyles.font14greyColorRegularWeight.copyWith(
                 color: Colors.black
             ),
          ),
          WidgetSpan(
              child: GestureDetector(
                child: Text(
                  " Sign Up",
                  style: TextStyles.font14greyColorRegularWeight.copyWith(
                    color: AppColors.primaryBlueColor
                  ),
                ),
              ),
          )
        ],
      ),
    );
  }
}