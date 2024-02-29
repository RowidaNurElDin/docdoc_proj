import '../../../../core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedCornersPrimaryColoredButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const RoundedCornersPrimaryColoredButton({super.key, required this.buttonText , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onTap ,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlueColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),),

      child: SizedBox(
        height: 52.h,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600

            ),
            textAlign: TextAlign.center,

          ),
        ),

      ),
    );
  }
}
