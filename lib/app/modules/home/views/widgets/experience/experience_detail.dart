import 'package:ajianaz_dev/app/modules/home/controllers/home_controller.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/experience/experience_detail_desc.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/experience/experience_detail_title.dart';
import 'package:ajianaz_dev/data/data.dart';
import 'package:ajianaz_dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExperienceDetail extends StatefulWidget {
  const ExperienceDetail({Key? key}) : super(key: key);

  @override
  State<ExperienceDetail> createState() => _ExperienceDetailState();
}

class _ExperienceDetailState extends State<ExperienceDetail> {
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400.h,
      child: Row(
        children: [
          SizedBox(
            width: 200.h,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listExperience.length,
              separatorBuilder: (context, index) => const SizedBox(),
              itemBuilder: (context, index) {
                return ExperienceDetailTitle(
                  onTap: () {
                    controller.updateExperienceIndex(index);
                  },
                  selectedIndex: controller.experienceIndex.value,
                  index: index,
                );
              },
            ),
          ),
          ExperienceDetailDesc(selectedIndex: controller.experienceIndex.value),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            horizontalSpace(MediaQuery.of(context).size.width / 8),
        ],
      ),
    );
  }
}
