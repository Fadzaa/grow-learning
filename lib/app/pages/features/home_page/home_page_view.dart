import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  HomePageView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

          ]
        )
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

