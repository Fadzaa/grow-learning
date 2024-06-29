import 'package:get/get.dart';
import 'package:grow_learning/common/constant.dart';

class ActivityDonePageController extends GetxController {
  RxBool isGrow = true.obs;
  RxString namePlant = 'Golden Barrel'.obs;
  RxString urlPlant = plantGoldenBarrelFull.obs;
  RxInt quantityPlant = 1.obs;
  RxString time = '120:30'.obs;
  RxInt xp = 0.obs;

  var name = ''.obs;
  var path = ''.obs;
  var countDown = ''.obs;


  onInit() {
    super.onInit();
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, String>;
      name.value = data['name'] ?? "";
      path.value = data['path'] ?? "";
      countDown.value = data['countdown'] ?? "";
    }

  }

  int convertTimeToSeconds(String time) {
    List<String> parts = time.split(':');
    int minutes = int.parse(parts[0]);
    int seconds = int.parse(parts[1]);
    return (minutes * 60) + seconds;
  }

  String xpCounter(String value) {
    int totalSeconds = convertTimeToSeconds(value);
    return (totalSeconds / 30 * 5).round().toString();
  }
}