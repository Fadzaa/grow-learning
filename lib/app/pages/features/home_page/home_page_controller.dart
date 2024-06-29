import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../list_activity_page/model/activity.dart';
import '../list_activity_page/model/activity_data.dart';



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

  RxBool isActivitySelected = false.obs;
  TextEditingController searchController = TextEditingController();
  TextEditingController activityController = TextEditingController();
  RxList<Activity> list_activity = activity_data;
  Activity selectedActivity = Activity(title: '', color: Colors.white);

  void selectActivity() {
    isActivitySelected.value = true;

  }

  void addActivity() {
    final random = Random();
    final color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    activity_data.add(
      Activity(title: activityController.text, color: color),
    );

    print(activity_data);
  }

  void searchActivity(String value) {
    list_activity.value = list_activity.where((element) => element.title.contains(value)).toList();
    update();
  }
}