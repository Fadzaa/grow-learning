import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_page_controller.dart';


class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          logoPrimary,
          width: 150,
          height: 150,
        )
      ),
    );
  }
}

