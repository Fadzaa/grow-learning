import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'otp_page_controller.dart';

class OtpPageView extends GetView<OtpPageController> {
  const OtpPageView({super.key});

  @override
  Widget build(BuildContext context) {

    // final defaultPinTheme = PinTheme(
    //   margin: const EdgeInsets.only(right: 9),
    //   width: 58,
    //   height: 60,
    //   textStyle: tsBodyMedium.copyWith(
    //     fontWeight: FontWeight.w600,
    //   ),
    //   decoration: BoxDecoration(
    //     color: const Color(0xFF808383).withOpacity(0.1),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    // );



    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Container(
                  //   margin: const EdgeInsets.symmetric(vertical: 30),
                  //   child: Pinput(
                  //       length: 4,
                  //       controller: controller.otpNumberController.value,
                  //       defaultPinTheme: defaultPinTheme,
                  //       separatorBuilder: (index) =>
                  //       const SizedBox(width: 8),
                  //       // validator: (value) {
                  //       //   return value == '2222' ? null : 'Pin is incorrect';
                  //       // },
                  //       hapticFeedbackType: HapticFeedbackType.lightImpact,
                  //       onCompleted: (value) => controller.isEnabled.value = true,
                  //       onChanged: (value) => controller.isEnabled.value = false,
                  //       showCursor: true,
                  //       cursor: Center(
                  //         child: Container(
                  //             margin: const EdgeInsets.only(),
                  //             width: 1,
                  //             height: 22,
                  //             color: Colors.grey),
                  //       ),
                  //       focusedPinTheme: defaultPinTheme.copyWith(
                  //         decoration: defaultPinTheme.decoration!
                  //             .copyWith(
                  //           borderRadius:
                  //           BorderRadius.circular(12),
                  //           border: Border.all(color: primaryColor),
                  //         ),
                  //       ),
                  //       submittedPinTheme: defaultPinTheme
                  //   ),
                  // ),


                ]
            ),
          )
      )
    );
  }
}




