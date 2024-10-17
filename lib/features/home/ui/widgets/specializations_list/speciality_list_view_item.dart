import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/features/home/data/models/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          itemIndex == selectedIndex
          ? Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorManager.darkBlue,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: ColorManager.lightBlue,
              child: SvgPicture.asset(
                'assets/svg/notifications.svg',
                height: 42.h,
                width: 42.w
              ),
            ),
          )
          : CircleAvatar(
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
            specializationsData?.name ?? 'Specialization',
            style: itemIndex == selectedIndex
            ? MyTextStyle.font14DarkBlueBold
            : MyTextStyle.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
