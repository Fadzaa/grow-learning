import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpPageController extends GetxController {
  late Rx<TextEditingController> otpNumberController;

  //Initial String Value
  RxString countDown = '00:00'.obs;

  RxInt count = 300.obs;

  @override
  void onInit() {
    otpNumberController = TextEditingController().obs;
    super.onInit();

    startTimer();
  }


  void startTimer() {

    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      if (count.value == 0) {
        timer.cancel();
      } else {
        count.value--;
        int minute = int.parse(countDown.value.split(':')[0]);
        int second = int.parse(countDown.value.split(':')[1]);
        minute = count.value ~/ 60;
        second = count.value % 60;

        if(second < 10) {
          countDown.value = '0$minute:0$second';
        } else {
          countDown.value = '0$minute:$second';
        }
      }
    });
  }

}