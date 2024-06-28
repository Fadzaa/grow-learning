import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomePageController extends GetxController with SingleGetTickerProviderMixin {
  TabController? tabController;
  RxBool isRating = false.obs;

  //Initial String Value
  RxString countDown = '00:00'.obs;

  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this );

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }

  void startStopwatch() {

    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      count.value++;
      int minute = int.parse(countDown.value.split(':')[0]);
      int second = int.parse(countDown.value.split(':')[1]);
      minute = count.value ~/ 60;
      second = count.value % 60;

      if(second < 10) {
        countDown.value = '0$minute:0$second';
      } else {
        countDown.value = '0$minute:$second';
      }
    });
  }
}