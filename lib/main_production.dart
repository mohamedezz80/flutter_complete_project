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

// To run release mode production.
// flutter run --release -t lib\main_production.dart --flavor production

// To build apk release mode production.
// flutter build apk --flavor production -t lib\main_production.dart

//038H4dUz-a65DCgYIARAAGAMSNwF-L9IreITuBnb39vJ4xlQ7Po28iGe5uaMqyCFXZM026LHr-76OCwr7hvdZ8dgNTqseIHHcvxA