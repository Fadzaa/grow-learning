import 'package:camera/camera.dart';
import 'package:get/get.dart';



class AiPageController extends GetxController {

   RxList<CameraDescription> cameras = <CameraDescription>[].obs;


  @override
  void onInit() async{
    super.onInit();
    // cameras = await availableCameras();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}