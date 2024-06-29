import 'package:get/get.dart';
import 'list_activity_controller.dart';


class ListActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListActivityController>(() => ListActivityController());
  }
}