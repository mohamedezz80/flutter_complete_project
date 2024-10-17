import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/helpers/constants.dart';
import 'package:flutter_complete_flutter/core/helpers/extensions.dart';
import 'package:flutter_complete_flutter/core/helpers/shared_prefrences.dart';
import 'package:flutter_complete_flutter/core/routing/app_router.dart';
import 'package:flutter_complete_flutter/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

// To run release mode production.
// flutter run --release -t lib\main_production.dart --flavor production

// To build apk release mode production.
// flutter build apk --flavor production -t lib\main_production.dart

//038H4dUz-a65DCgYIARAAGAMSNwF-L9IreITuBnb39vJ4xlQ7Po28iGe5uaMqyCFXZM026LHr-76OCwr7hvdZ8dgNTqseIHHcvxA