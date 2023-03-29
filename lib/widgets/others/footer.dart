import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors.dart';
import '../../styles/styles.dart';
import '../../utils/app_utils.dart';
import '../buttons/icon_button_custom.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 12),
        if (MediaQuery.of(context).size.width < 960)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              horizontalSpace(20.h),
              IconButtonCustom(
                isCustomIcon: true,
                customIcon: 'ic_github.png',
                iconSize: 30.h,
                onPressed: () {
                  AppUtils.openLink('https://github.com/ajianaz');
                },
              ),
              horizontalSpace(20.h),
              IconButtonCustom(
                isCustomIcon: true,
                customIcon: 'ic_linkedin.png',
                iconSize: 30.h,
                onPressed: () {
                  AppUtils.openLink('https://www.linkedin.com/in/ajianaz');
                },
              ),
              horizontalSpace(20.h),
              IconButtonCustom(
                isCustomIcon: true,
                customIcon: 'ic_instagram.png',
                iconSize: 30.h,
                onPressed: () {
                  AppUtils.openLink('https://www.instagram.com/ajianaz/');
                },
              ),
              horizontalSpace(20.h),
              IconButtonCustom(
                isCustomIcon: true,
                customIcon: 'ic_youtube.png',
                iconSize: 30.h,
                onPressed: () {
                  AppUtils.openLink('https://www.youtube.com/@ajianaz');
                },
              ),
              horizontalSpace(40.h),
            ],
          )
        else
          const SizedBox(),
        verticalSpace(40.h),
        Text(
          'Build with Flutter Web',
          style: TextStyles.firaCodeText.copyWith(color: AppColor.textColor2),
          textAlign: TextAlign.center,
        ),
        verticalSpace(40.h),
      ],
    );
  }
}
