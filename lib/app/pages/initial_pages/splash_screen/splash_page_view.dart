import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:grow_learning/common/constant.dart';
import 'splash_page_controller.dart';


class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          icLogoPrimary,
          width: 150,
          height: 151,
        )
      ),
    );
  }
}

