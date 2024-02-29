
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/core/helpers/assets_variables.dart';
import 'package:untitled1/core/themes/colors.dart';

class DoctorAndTitle extends StatelessWidget {
  const DoctorAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,

      children: [
        SvgPicture.asset(AssetsVariables.backgroundLogo,),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white.withOpacity(0.0), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
        child: Image.asset(AssetsVariables.doctor),
        ),
        Text(
          "Best Doctor Appointment App",
          style: TextStyle(
            color: AppColors.primaryBlueColor,
            fontSize: 40.sp,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
        )
      ],
    );
  }
}
