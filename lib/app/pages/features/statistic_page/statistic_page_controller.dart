import 'package:camera/camera.dart';
import 'package:get/get.dart';

class GDPData {
  GDPData(this.continent, this.gdp);

  final String continent;
  final int gdp;
}

class StatisticPageController extends GetxController {
  late List<GDPData> chartData;

  @override
  void onInit() async {
    super.onInit();

    chartData = [
      GDPData('Oceanis', 1600),
      GDPData('Africa', 2490),
      GDPData('S America', 2900),
      GDPData('Europe', 23050)
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
