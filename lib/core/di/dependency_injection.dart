import 'package:dio/dio.dart';
import 'package:flutter_complete_flutter/core/networking/api_services.dart';
import 'package:flutter_complete_flutter/core/networking/dio_factory.dart';
import 'package:flutter_complete_flutter/features/login/data/repos/login_repo.dart';
import 'package:flutter_complete_flutter/features/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  // Dio & ApiServices
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}