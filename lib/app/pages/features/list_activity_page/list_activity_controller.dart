import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:grow_learning/app/pages/features/list_activity_page/model/activity.dart';
import 'package:grow_learning/app/pages/features/list_activity_page/model/activity_data.dart';

class ListActivityController extends GetxController with SingleGetTickerProviderMixin {
  RxBool isActivitySelected = false.obs;
  TextEditingController searchController = TextEditingController();
  TextEditingController activityController = TextEditingController();
  RxList<Activity> list_activity = activity_data;

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