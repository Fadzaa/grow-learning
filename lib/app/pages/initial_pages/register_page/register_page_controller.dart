import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class RegisterPageController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPassController;


  RxBool isLoading = false.obs;

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPassController = TextEditingController();

    super.onInit();
  }

}

// void validateForm() {
//   if (nameController.text.isEmpty) {
//     Get.snackbar('Error', 'Name is required');
//   } else if (emailController.text.isEmpty) {
//     Get.snackbar('Error', 'Email is required');
//   } else if (passwordController.text.isEmpty) {
//     Get.snackbar('Error', 'Password is required');
//   } else if (confirmPassController.text.isEmpty) {
//     Get.snackbar('Error', 'Confirm Password is required');
//   } else if (passwordController.text != confirmPassController.text) {
//     Get.snackbar('Error', 'Password does not match');
//   } else {
//     Get.snackbar('Success', 'Form is valid');
//     Get.toNamed(Routes.OTP_VERIFICATION_PAGE);
//   }
// }