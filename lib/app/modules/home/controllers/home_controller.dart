import 'package:ajianaz_dev/app/modules/home/views/widgets/about/about.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/experience/experience.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/general_introduction.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/project/project.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/project/project_other.dart';
import 'package:ajianaz_dev/widgets/others/footer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeController extends GetxController {
  final itemScrollController = ItemScrollController();
  RxInt experienceIndex = RxInt(0);

  List<Widget> contents = const [
    GeneralIntroduction(),
    About(),
    Experience(),
    Project(),
    ProjectOther(),
    // Contact(),
    Footer(),
  ];

  Future<void> contentNavigation(int index) async {
    await itemScrollController.scrollTo(
      index: index,
      curve: Curves.ease,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  updateExperienceIndex(int index) {
    experienceIndex.value = index;
  }
}
