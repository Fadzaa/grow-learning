import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/constant.dart';
import '../../../../common/theme.dart';
import '../../../router/app_pages.dart';
import '../../global_component/common_button.dart';
import '../../global_component/common_textfield.dart';
import 'register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(icLogoHorizontal, width:125)
                  ),

                  const SizedBox(height: 20,),

                  Text("Hello There", style: tsTitleMedium.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFB6B6B6),
                  ),),

                  Text("Make Your Account!", style: tsHeadingLarge.copyWith(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),),

                  const SizedBox(height: 40,),

                  Text("Username", style: tsBodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),),

                  CommonTextField(
                    controller: controller.emailController,
                    hintText: "Username",
                    prefixIcon: icUser,
                  ),

                  const SizedBox(height: 15,),

                  Text("Email", style: tsBodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),),

                  CommonTextField(
                    controller: controller.emailController,
                    hintText: "Email",
                    prefixIcon: icMail,
                  ),

                  const SizedBox(height: 15,),

                  Text("Password", style: tsBodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),),

                  CommonTextField(
                    controller: controller.passwordController,
                    hintText: "Password",
                    prefixIcon: icLockOutline,
                    isObscure: true,
                  ),

                  const SizedBox(height: 15,),

                  Text("Confirm Password", style: tsBodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),),

                  CommonTextField(
                    controller: controller.passwordController,
                    hintText: "Confirm Password",
                    prefixIcon: icLockOutline,
                    isObscure: true,
                  ),

                  const SizedBox(height: 50,),

                  CommonButton(
                    text: "Register",
                    onPressed: () {
                      Get.offAllNamed(Routes.OTP_VERIFICATION_PAGE);
                    },
                    height: 45,
                  ),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style: tsBodyMedium.copyWith(
                        color: const Color(0xFFB8B8B8),
                      ),),

                      const SizedBox(width: 3,),

                      InkWell(
                        onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
                        child: Text("Login", style: tsBodyMedium.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),

                    ],
                  ),

                  const Spacer(),
                ]
            ),
          ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}






