import 'package:camera/camera.dart';
import 'package:get/get.dart';

class GDPData {
  GDPData(this.nama, this.hour);

  final String nama;
  final int hour;
}

class StatisticPageController extends GetxController {
  RxList<GDPData> chartData = <GDPData>[].obs;


  String resultTime = "";


  @override
  void onInit() async {
    super.onInit();


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
