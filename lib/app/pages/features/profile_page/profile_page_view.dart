import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


              ],
            ),
          ),
        ),
      )
    );
  }
}
