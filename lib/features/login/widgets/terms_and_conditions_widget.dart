import '../../../core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        style: TextStyles.font14greyColorRegularWeight.copyWith(
          height: 1.5,
        ),
        children: const [
          TextSpan(text: 'By logging, you agree to our '),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black,),
          ),
          TextSpan(text: ' and '),
          TextSpan(
              text: 'Privacy Policy.',
            style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),
          ),
        ],
      ),
    );
  }
}
