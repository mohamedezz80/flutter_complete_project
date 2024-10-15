import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/specialization_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final DoctorsModel? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // CachedNetworkImage(
          //     imageUrl: "https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
          //   progressIndicatorBuilder: (context, url, downloadProgress) =>
          //   CircularProgressIndicator(value: downloadProgress.progress),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // ),
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
                  doctorsModel?.name ?? 'Name',
                  style: MyTextStyle.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: MyTextStyle.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.phone ?? 'Email',
                  style: MyTextStyle.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
