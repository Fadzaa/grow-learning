import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfilePageController extends GetxController {
  @override
  void onInit()  {
    super.onInit();
  }


  RxDouble progress = 0.0.obs;

  void updateProgress(double value) {
    progress.value = value;
  }
}