import 'package:ajianaz_dev/app/modules/home/views/widgets/about.dart';
import 'package:ajianaz_dev/app/modules/home/views/widgets/general_introduction.dart';
import 'package:ajianaz_dev/widgets/others/footer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeController extends GetxController {
  final itemScrollController = ItemScrollController();

  List<Widget> contents = const [
    GeneralIntroduction(),
    About(),
    // Experience(),
    // Project(),
    // ProjectOther(),
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

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
