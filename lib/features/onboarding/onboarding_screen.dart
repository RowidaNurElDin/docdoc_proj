
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/core/helpers/assets_variables.dart';
import 'package:untitled1/core/routing/routes.dart';
import 'package:untitled1/core/routing/routing_extension.dart';
import 'package:untitled1/core/themes/colors.dart';
import 'package:untitled1/core/widgets/app_blue_button.dart';
import 'package:untitled1/features/onboarding/widgets/doctor_and_title_stack.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(AssetsVariables.logo,
                    height: 38.h, width: 141.w),
                SizedBox(
                  height: 20.h,
                ),
                const DoctorAndTitle(),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Manage and schedule all of your medical appoinmtents easily with DocDoc to get a new experience",
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 15.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
                SizedBox(
                  height: 50.h,
                ),
                RoundedCornersPrimaryColoredButton(
                  buttonText: "Get Started",
                  onTap: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
