import 'package:untitled1/features/chat/presentation/chat_screen.dart';

import '../../../../core/dependency_injection/dependency_injection.dart';
import '../../../../core/routing/routes.dart';
import '../../../../features/home/home_screen.dart';
import '../../../../features/login/logic/login_cubit.dart';
import '../../../../features/login/login_screen.dart';
import '../../../../features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onboardingScreen:
        return MaterialPageRoute(
            builder: (_) => const OnboardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => ChatScreen()
            //  BlocProvider(
            //   create: (context) => getIt<LoginCubit>(),
            //   child: const LoginScreen(),
            // )
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) =>  ChatScreen()
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
              body: Center(
                child: Text("Route not fount"),
              ),
            )
        );

    }


  }
}