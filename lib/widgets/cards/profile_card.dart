import 'package:ajianaz_dev/styles/colors.dart';
import 'package:ajianaz_dev/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.h,
      height: 350.h,
      child: Stack(
        children: [
          Positioned(
            top: 25.h,
            left: 25.h,
            child: Container(
              width: 320.h,
              height: 320.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.primaryColor),
                borderRadius: BorderRadius.circular(175.h),
              ),
            ),
          ),
          Container(
            width: 350.h,
            height: 350.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAsset.image('img_profile.png')),
              ),
              // borderRadius: BorderRadius.circular(15.h),
            ),
          ),
        ],
      ),
    );
  }
}
