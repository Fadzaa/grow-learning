import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:grow_learning/app/pages/features/list_activity_page/list_activity_controller.dart';
import 'package:grow_learning/app/pages/features/statistic_page/statistic_page_controller.dart';

import '../list_activity_page/model/activity.dart';
import '../list_activity_page/model/activity_data.dart';

class HomePageController extends GetxController
    with SingleGetTickerProviderMixin {
  TabController? tabController;
  RxBool isRating = false.obs;

  RxString name = "".obs;
  RxString path = "".obs;

  RxBool IsStart = false.obs;

  RxString namaMapel = "".obs;

  //Initial String Value
  RxString countDown = '00:00'.obs;

  RxString resultCountDown = "".obs;
  RxInt count = 0.obs;

  late Timer _timer;

  RxString countDownTimer = '00:00'.obs;
  RxInt countTimer = 0.obs;



  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);

    namaMapel.value = Get.put(ListActivityController()).list_activity[0].title;

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }

  void startStopwatch() {
    IsStart.value = true;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      count.value++;
      int minute = int.parse(countDown.value.split(':')[0]);
      int second = int.parse(countDown.value.split(':')[1]);
      minute = count.value ~/ 60;
      second = count.value % 60;

      if (second < 10) {
        countDown.value = '0$minute:0$second';
      } else {
        countDown.value = '0$minute:$second';
      }
    });
  }


  int timeToMinutes(String timeString) {
    List<String> parts = timeString.split(':'); // Memecah string berdasarkan titik dua (:)
    int hours = int.parse(parts[0]); // Mengambil jam dan mengonversi ke integer
    int minutes = int.parse(parts[1]); // Mengambil menit dan mengonversi ke integer

    return hours * 60 + minutes; // Menghitung total menit
  }

  void stopStopwatch() {


    Get.put(StatisticPageController()).chartData.add(GDPData(name.value, timeToMinutes(countDown.value)));
    IsStart.value = false;
    _timer.cancel();
    var dataToSend = {
      'name': name.value,
      'path': path.value,
      'countdown': countDown.value
    };
    Get.toNamed("/activity-done-page", arguments: dataToSend);
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      countTimer.value--;
      int minute = int.parse(countDownTimer.value.split(':')[0]);
      int second = int.parse(countDownTimer.value.split(':')[1]);
      minute = countTimer.value ~/ 60;
      second = countTimer.value % 60;

      if(second < 10) {
        countDownTimer.value = '0$minute:0$second';
      } else {
        countDownTimer.value = '0$minute:$second';
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
    list_activity.value = list_activity
        .where((element) => element.title.contains(value))
        .toList();
    update();
  }

  RxDouble currentValueSlider = 0.0.obs;
}
