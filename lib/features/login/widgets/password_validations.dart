import '../../../core/themes/colors.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/sized_box_helper.dart';
import '../../../features/login/logic/login_cubit.dart';
import '../../../features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasMinLength;
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasSymbols;
  final bool hasNumbers;

  const PasswordValidations({super.key, required this.hasMinLength, required this.hasUpperCase, required this.hasLowerCase, required this.hasSymbols, required this.hasNumbers});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildPasswordValidationRow(hasMinLength, "Must be at least 8 characters"),
            verticalSizedBox(2.h),
            buildPasswordValidationRow(hasUpperCase, "Must contain at least one uppercase letter"),
            verticalSizedBox(2.h),
            buildPasswordValidationRow(hasLowerCase, "Must contain at least one lowercase letter"),
            verticalSizedBox(2.h),
            buildPasswordValidationRow(hasNumbers, "Must have at least one number"),
            verticalSizedBox(2.h),
            buildPasswordValidationRow(hasSymbols, "Must have at least one symbol"),
          ],
        );
      },
    );
  }
}

Widget buildPasswordValidationRow(bool condition , String conditionText){
  return Row(
    children: [
      CircleAvatar(
        backgroundColor: AppColors.greyColor,
        radius: 2.r,
      ),
      horizontalSizedBox(5.w),
      Expanded(
        child: Text(conditionText,
          style: TextStyles.font14greyColorRegularWeight.copyWith(
              decoration: !condition ? TextDecoration.none : TextDecoration.lineThrough,
            overflow: TextOverflow.ellipsis,
            color: !condition ? Colors.grey[900] : Colors.green
          ),
          maxLines: 1,
          textAlign: TextAlign.start,
        
        ),
      ),
    ],
  );
}
