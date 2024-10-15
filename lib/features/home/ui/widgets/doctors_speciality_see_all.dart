import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/theming/styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: MyTextStyle.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: MyTextStyle.font12BlueRegular,
        ),
      ],
    );
  }
}
