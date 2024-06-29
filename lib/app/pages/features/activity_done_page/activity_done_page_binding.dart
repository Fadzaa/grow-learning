import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/activity_done_page/activity_done_page_controller.dart';

class ActivityDonePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActivityDonePageController>(() => ActivityDonePageController());
  }
}