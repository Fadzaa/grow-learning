import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:grow_learning/common/constant.dart';
import 'package:pinput/pinput.dart';
import '../../../../common/theme.dart';
import '../../../router/app_pages.dart';
import '../../global_component/common_button.dart';
import 'otp_page_controller.dart';

class OtpPageView extends GetView<OtpPageController> {
  const OtpPageView({super.key});

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      margin: const EdgeInsets.only(right: 9),
      width: 58,
      height: 60,
      textStyle: tsBodyMedium.copyWith(
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF808383).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
    );



    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(icLogoHorizontal, width: 125)
                  ),

                  const SizedBox(height: 40,),

                  Text(
                    "OTP Verification",
                    style: tsTitleSmall.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Text(
                    "Code will be send in your mailbox",
                    style: tsBodySmall.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFACACAC),
                    ),
                  ),


                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: Pinput(
                        length: 4,
                        controller: controller.otpNumberController.value,
                        defaultPinTheme: defaultPinTheme,
                        separatorBuilder: (index) =>
                        const SizedBox(width: 8),
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (value) => controller.isEnabled.value = true,
                        onChanged: (value) => controller.isEnabled.value = false,
                        showCursor: true,
                        cursor: Center(
                          child: Container(
                              margin: const EdgeInsets.only(),
                              width: 1,
                              height: 22,
                              color: Colors.grey),
                        ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!
                              .copyWith(
                            borderRadius:
                            BorderRadius.circular(12),
                            border: Border.all(color: primaryColor),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Code will expired in ", style: tsBodyMedium),

                      const SizedBox(width: 3,),

                      InkWell(
                          onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
                          child: Obx(() => Text(controller.countDown.value, style: tsBodyMedium.copyWith(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),),)
                      ),

                    ],
                  ),

                  const SizedBox(height: 30,),
                  const Spacer(),

                  Obx(() => CommonButton(
                    text: "Verify",
                    onPressed: controller.isEnabled.value ? () => Get.offAllNamed(Routes.HOME_PAGE) : null,
                    height: 50,
                  ),),

                  const SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Doesn’t receive the code?", style: tsBodyMedium.copyWith(
                        color: const Color(0xFFB8B8B8),
                      ),),

                      const SizedBox(width: 3,),

                      InkWell(
                        onTap: () => Get.toNamed(Routes.REGISTER_PAGE),
                        child: Text("Resend Code", style: tsBodyMedium.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30,),
                ]
            ),
          )
      )
    );
  }
}




