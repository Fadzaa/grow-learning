import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_learning/app/pages/features/home_page/home_page_controller.dart';
import 'package:grow_learning/app/pages/global_component/common_button.dart';
import 'package:grow_learning/common/theme.dart';


class StopwatchView extends GetView<HomePageController> {
  const StopwatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset('assets/big_tree.svg', width: MediaQuery.of(context).size.width * 1),

        Obx(() => Text(controller.countDown.value,
          style: GoogleFonts.urbanist(
              fontSize: 84,
              color: primaryColor,
              fontWeight: FontWeight.normal
          ),
        ),),

        CommonButton(
          text: 'Mulai Belajar',
          onPressed: () => controller.startStopwatch(),
          height: 48,
          style: GoogleFonts.urbanist(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,

        ),)
      ],
    );
  }
}
