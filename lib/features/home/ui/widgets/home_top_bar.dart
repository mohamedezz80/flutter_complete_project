import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/theming/colors.dart';
import 'package:flutter_complete_flutter/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mohamed!',
              style: MyTextStyle.font18DarkBlueBold,
            ),
            Text(
              'How are you Today?',
              style: MyTextStyle.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorManager.moreLighterGray,
          child: SvgPicture.asset(
              "assets/svg/notifications.svg"
          ),
        ),
      ],
    );
  }
}
