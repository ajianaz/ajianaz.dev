import 'package:ajianaz_dev/styles/colors.dart';
import 'package:ajianaz_dev/widgets/buttons/floating_left_button.dart';
// import 'package:ajianaz_dev/widgets/buttons/floating_right_button.dart';
import 'package:ajianaz_dev/widgets/others/appbar_custom.dart';
import 'package:ajianaz_dev/widgets/others/drawer_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.black,
      title: "Ajianaz Personal Website",
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        endDrawer: DrawerCustom(
          onPressedAbout: () {
            controller.contentNavigation(1);
          },
          onPressedContact: () {
            controller.contentNavigation(5);
          },
          onPressedExperience: () {
            controller.contentNavigation(2);
          },
          onPressedWork: () {
            controller.contentNavigation(3);
          },
        ),
        appBar: AppBarCustom(
          onPressedAbout: () {
            controller.contentNavigation(1);
          },
          onPressedContact: () {
            controller.contentNavigation(5);
          },
          onPressedExperience: () {
            controller.contentNavigation(2);
          },
          onPressedWork: () {
            controller.contentNavigation(3);
          },
        ),
        body: Stack(
          children: [
            ScrollablePositionedList.builder(
              padding: EdgeInsets.symmetric(
                horizontal:
                    MediaQuery.of(context).size.width < 960 ? 50.h : 250.h,
              ),
              itemScrollController: controller.itemScrollController,
              itemCount: controller.contents.length,
              itemBuilder: (context, index) {
                return controller.contents[index];
              },
            ),
            if (MediaQuery.of(context).size.width < 960)
              const SizedBox()
            else
              const FloatingLeftButton(),
            if (MediaQuery.of(context).size.width < 960) const SizedBox()
            // else
            // const FloatingRightButton(),
          ],
        ),
      ),
    );
  }
}
//TODO
//Profil Pribadi: Informasi tentang latar belakang, pengalaman, dan keahlian.

// Portfolio: Kumpulan hasil kerja dan prestasi yang pernah dicapai.

// Blog atau artikel: Space untuk menulis dan membagikan pemikiran dan pendapat pribadi.

// Kontak: Informasi kontak seperti alamat email dan nomor telepon untuk memudahkan komunikasi dengan pengunjung.

// Media Sosial: Tautan ke akun media sosial seperti LinkedIn, Twitter, dan Instagram untuk memperluas jangkauan dan menunjukkan personal brand secara online.

// Testimonial: Umpan balik dari klien atau rekan kerja sebagai bukti kepercayaan dan kredibilitas.

// Call to action (CTA): Instruksi yang jelas tentang bagaimana pengunjung dapat berkontak atau melakukan tindakan selanjutnya.