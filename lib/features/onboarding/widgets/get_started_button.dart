import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/helpers/extensions.dart';
import 'package:flutter_complete_flutter/core/theming/colors.dart';
import 'package:flutter_complete_flutter/core/theming/styles.dart';

import '../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
            const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Stated',
        style: MyTextStyle.font16WhiteSemiBold,
      ),
    );
  }
}
