import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: MyTextStyle.font13GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: MyTextStyle.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: MyTextStyle.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: MyTextStyle.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}