import 'package:get/get.dart';
import 'package:grow_learning/common/constant.dart';

class ActivityDonePageController extends GetxController {
  RxBool isGrow = true.obs;
  RxString namePlant = 'Golden Barrel'.obs;
  RxString urlPlant = plantGoldenBarrelFull.obs;
  RxInt quantityPlant = 1.obs;
  RxString time = '120:30'.obs;
  RxInt xp = 0.obs;

  onInit() {
    super.onInit();
    xpCounter();
  }

  int convertTimeToSeconds(String time) {
    List<String> parts = time.split(':');
    int minutes = int.parse(parts[0]);
    int seconds = int.parse(parts[1]);
    return (minutes * 60) + seconds;
  }

  void xpCounter() {
    int totalSeconds = convertTimeToSeconds(time.value);
    xp.value = (totalSeconds / 30 * 5).round();
  }
}