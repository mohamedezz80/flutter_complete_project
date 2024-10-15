
import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/routing/app_router.dart';
import 'package:flutter_complete_flutter/core/routing/routes.dart';
import 'package:flutter_complete_flutter/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzI5MDExMjU0LCJleHAiOjE3MjkwOTc2NTQsIm5iZiI6MTcyOTAxMTI1NCwianRpIjoiVzVqMDE4Wno2RlUwbkVsQSIsInN1YiI6IjEyMTYiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.ZwYObDmgCBcz-ZDK4dawUyCDAGoXHjmLv6acU45YU2c

// eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzI5MDA0MDg0LCJleHAiOjE3MjkwOTA0ODQsIm5iZiI6MTcyOTAwNDA4NCwianRpIjoiTGhLMnUzaGxSZVFBQ2lXTiIsInN1YiI6IjEyMTYiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.hyxdeWi8hZEdvLAwk_CaqE-mZi6oBB-Cu0v2jrDf9lo
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

