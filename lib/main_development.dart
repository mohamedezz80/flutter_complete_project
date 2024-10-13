import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/routing/app_router.dart';
import 'package:flutter_complete_flutter/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}

// To run release mode development.
// flutter run --release -t lib\main_development.dart --flavor development

// To build apk release mode development.
// flutter build apk --flavor development -t lib\main_development.dart