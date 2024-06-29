import 'package:get/get.dart';
import 'ai_page_controller.dart';


class AiPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AiPageController>(() => AiPageController());
  }
}