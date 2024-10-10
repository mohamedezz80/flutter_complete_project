import 'package:dio/dio.dart';
import 'package:flutter_complete_flutter/core/networking/api_constants.dart';
import 'package:flutter_complete_flutter/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_flutter/features/login/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
