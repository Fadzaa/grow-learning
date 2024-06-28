import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                ]
            ),
          ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}




