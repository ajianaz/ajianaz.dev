import 'package:ajianaz_dev/constants/constant.dart';
import 'package:ajianaz_dev/styles/colors.dart';
import 'package:ajianaz_dev/styles/styles.dart';
import 'package:ajianaz_dev/widgets/cards/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutDetailSmallScreen extends StatelessWidget {
  const AboutDetailSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileCard(),
        verticalSpace(40.h),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                App.DescriptionLong,
                style: TextStyles.heeboText
                    .copyWith(fontSize: 20.h, color: AppColor.textColor2),
              ),
              verticalSpace(20.h),
              Text(
                'I also keep learning about mobile application development especially Flutter on my free time to update my knowledge.',
                style: TextStyles.heeboText
                    .copyWith(fontSize: 20.h, color: AppColor.textColor2),
              ),
              verticalSpace(20.h),
              Text(
                "Here are a few technologies or tools I've been working with recently :",
                style: TextStyles.heeboText
                    .copyWith(fontSize: 20.h, color: AppColor.textColor2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
