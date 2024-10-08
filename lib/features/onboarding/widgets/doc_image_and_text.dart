import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14,0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doc.png'),
        ),
        Positioned(
          bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: MyTextStyle.font32BlueBold.copyWith(
                height: 1.4,
              ),
            ),
        ),
      ],
    );
  }
}
