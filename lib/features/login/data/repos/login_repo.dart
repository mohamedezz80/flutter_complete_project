
import 'package:flutter_complete_flutter/core/networking/api_error_handler.dart';
import 'package:flutter_complete_flutter/core/networking/api_services.dart';
import 'package:flutter_complete_flutter/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_flutter/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_result.dart';

class LoginRepo {
  final ApiServices _apiServices;
  LoginRepo(this._apiServices);
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch(error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}