import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/helpers/spacing.dart';
import 'package:flutter_complete_flutter/core/theming/colors.dart';
import 'package:flutter_complete_flutter/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ? 0 : 24.w,
              ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorManager.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svg/notifications.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                Text(
                  'Specialization',
                  style: MyTextStyle.font12DarkBlueRegular,
                ),
              ],
            ),
          );
          },
      ),
    );
  }
}
