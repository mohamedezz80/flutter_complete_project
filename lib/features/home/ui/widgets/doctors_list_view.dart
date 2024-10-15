import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                        "https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                      height: 120.h,
                      width: 110.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: MyTextStyle.font18DarkBlueBold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          'Degree | 01111111111',
                          style: MyTextStyle.font12GrayMedium,
                        ),
                        verticalSpace(5),
                        Text(
                          'mohamed@gmail.com',
                          style: MyTextStyle.font12GrayMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
    );
  }
}
