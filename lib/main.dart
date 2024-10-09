import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/routing/app_router.dart';
import 'package:flutter_complete_flutter/doc_app.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  // //   statusBarColor: Colors.white,
  // // ));
  // // SystemChrome.setPreferredOrientations([
  // //   DeviceOrientation.portraitUp,
  // //   DeviceOrientation.portraitDown,
  // // ]);
  // // SystemChrome.setEnabledSystemUIMode(
  // //   SystemUiMode.manual,
  // //   overlays: [SystemUiOverlay.top],
  // // );
  runApp(DocApp(
    appRouter: AppRouter(),
  ));

}
