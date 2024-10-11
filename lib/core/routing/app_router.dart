import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_flutter/core/di/dependency_injection.dart';
import 'package:flutter_complete_flutter/core/routing/routes.dart';
import 'package:flutter_complete_flutter/features/home/ui/home_screen.dart';
import 'package:flutter_complete_flutter/features/login/logic/login_cubit.dart';
import 'package:flutter_complete_flutter/features/onboarding/onboarding_screen.dart';
import 'package:flutter_complete_flutter/features/signup/logic/signup_cubit.dart';
import 'package:flutter_complete_flutter/features/signup/ui/signup_screen.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen()),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
