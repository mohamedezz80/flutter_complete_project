import 'package:dio/dio.dart';
import 'package:flutter_complete_flutter/core/networking/api_services.dart';
import 'package:flutter_complete_flutter/core/networking/dio_factory.dart';
import 'package:flutter_complete_flutter/features/home/data/apis/home_api_service.dart';
import 'package:flutter_complete_flutter/features/home/data/repos/home_repo.dart';
import 'package:flutter_complete_flutter/features/login/data/repos/login_repo.dart';
import 'package:flutter_complete_flutter/features/login/logic/login_cubit.dart';
import 'package:flutter_complete_flutter/features/signup/data/repo/signup_repo.dart';
import 'package:flutter_complete_flutter/features/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  // Dio & ApiServices
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}