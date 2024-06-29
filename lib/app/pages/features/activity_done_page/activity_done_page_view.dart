import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/activity_done_page/activity_done_page_controller.dart';
import 'package:grow_learning/app/pages/global_component/common_button.dart';
import 'package:grow_learning/common/constant.dart';
import 'package:grow_learning/common/theme.dart';

import '../../../router/app_pages.dart';

class ActivityDonePageView extends GetView<ActivityDonePageController> {
  const ActivityDonePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              color: Color(0xFFF5F5F5),
              padding: EdgeInsets.all(35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Aktivitas Selesai', style: tsHeadingSmall.copyWith(
                      fontWeight: FontWeight.w600
                  ),),

                  const SizedBox(height: 20,),

                  Obx(() => Text(
                    controller.isGrow.value ? 'Selamat, kamu berhasil merawat tanamanmu dengan baik' : 'Sayang sekali, tanamanmu tidak tumbuh dengan baik',
                    style: tsTitleSmall.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),),

                  const SizedBox(height: 20,),

                  Image.asset(controller.urlPlant.value, height: 150),

                  const SizedBox(height: 20,),

                  Obx(() => Text(
                    controller.isGrow.value ? '+${controller.quantityPlant.value} ${controller.namePlant} \nditambahkan ke koleksimu' : '+0 ${controller.namePlant}',
                    style: tsBodyLarge.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset(imgFlame, width: 30, height: 30,),
                            SizedBox(height: 15,),
                            Text('${controller.xp.value}', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Text('XP TOTAL', style: tsBodySmall.copyWith(color: Color(0xFFC5C5C5), fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),

                      const SizedBox(width: 20,),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(icClock, width: 30, height: 30,),
                            SizedBox(height: 15,),
                            Text('${controller.time.value}', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Text('FOCUS TIME', style: tsBodySmall.copyWith(color: Color(0xFFC5C5C5), fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  CommonButton(
                    text: 'Kembali ke home',
                    onPressed: () => Get.offAllNamed(Routes.HOME_PAGE),
                    height: 50,
                  ),
                ],
              ),
            )
        )
    );
  }
}

