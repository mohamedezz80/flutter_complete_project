
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_flutter/core/helpers/constants.dart';
import 'package:flutter_complete_flutter/core/helpers/shared_prefrences.dart';
import 'package:flutter_complete_flutter/core/networking/dio_factory.dart';
import 'package:flutter_complete_flutter/features/login/data/models/login_request_body.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
        LoginRequestBody(
            email: emailController.text,
            password: passwordController.text,
        ),
    );
    response.when(
        success: (loginResponse) async {
          await saveUserToken(loginResponse.userData?.token ?? '');
          emit(LoginState.success(loginResponse));
        },
        failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
        },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

}
