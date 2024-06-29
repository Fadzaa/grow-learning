import 'package:camera/camera.dart';
import 'package:get/get.dart';



class AiPageController extends GetxController {

  late List<CameraDescription> cameras;


  @override
  void onInit() async{
    super.onInit();
    cameras = await availableCameras();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}