import 'package:get/get.dart';

import 'friends_page_controller.dart';

class FriendsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FriendsPageController>(() => FriendsPageController());
  }
}