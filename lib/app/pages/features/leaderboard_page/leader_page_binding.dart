import 'package:get/get.dart';
import 'leader_page_controller.dart';


class LeaderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeaderPageController>(() => LeaderPageController());
  }
}