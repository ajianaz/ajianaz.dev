import 'package:ajianaz_dev/constants/constant.dart';
import 'package:ajianaz_dev/styles/colors.dart';
import 'package:ajianaz_dev/styles/styles.dart';
import 'package:ajianaz_dev/utils/app_utils.dart';
import 'package:ajianaz_dev/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralIntroduction extends StatelessWidget {
  const GeneralIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 5),
        Text(
          'Hello, my name is',
          style: TextStyles.firaCodeText.copyWith(fontSize: 20.h),
        ),
        verticalSpace(40.h),
        Text(
          App.Fullname,
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 40.h : 60.h,
            color: AppColor.textColor1,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        Text(
          App.DescriptionShort,
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 40.h : 60.h,
            color: AppColor.textColor2,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        verticalSpace(40.h),
        SizedBox(
          width: MediaQuery.of(context).size.width < 960
              ? double.infinity
              : MediaQuery.of(context).size.width / 2.4,
          child: Text(
            App.Description,
            style: TextStyles.heeboText
                .copyWith(fontSize: 20.h, color: AppColor.textColor2),
            textAlign: TextAlign.justify,
          ),
        ),
        verticalSpace(40.h),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width < 1000
                ? MediaQuery.of(context).size.width / 2
                : MediaQuery.of(context).size.width / 1.7,
          ),
          child: ButtonPrimary(
            onTap: () {
              AppUtils.openLink(
                'https://www.linkedin.com/in/ajianaz/',
              );
            },
            height: 60.h,
            isOutline: true,
            label: 'Check out my LinkedIn!',
            color: Colors.transparent,
            outlineColor: AppColor.primaryColor,
            radius: 5.h,
          ),
        ),
        verticalSpace(MediaQuery.of(context).size.height / 4),
      ],
    );
  }
}
