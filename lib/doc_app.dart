
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/routing/app_router.dart';
import 'package:untitled1/core/routing/routes.dart';
import 'package:untitled1/core/themes/colors.dart';

class DocDoc extends StatelessWidget {
  final AppRouter appRouter;
  const DocDoc({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: AppColors.primaryBlueColor,
          scaffoldBackgroundColor: Colors.white,
          unselectedWidgetColor: Colors.grey[500], // <-- your color

        ),
        initialRoute: Routes.onboardingScreen,
      ),
    );
  }
}