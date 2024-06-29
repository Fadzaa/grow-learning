import 'package:get/get.dart';
import 'statistic_page_controller.dart';


class StatisticPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatisticPageController>(() => StatisticPageController());
  }
}