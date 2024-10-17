import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/helpers/extensions.dart';
import 'package:flutter_complete_flutter/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';


class DoNotHaveAccountText extends StatelessWidget {
  const DoNotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: MyTextStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: MyTextStyle.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}