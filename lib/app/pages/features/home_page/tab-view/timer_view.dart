import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_learning/app/pages/features/home_page/home_page_controller.dart';
import 'package:grow_learning/app/pages/features/home_page/tab-view/stopwatch_view.dart';
import 'package:grow_learning/app/pages/global_component/common_button.dart';
import 'package:grow_learning/common/theme.dart';
import 'package:grow_learning/app/pages/global_component/common_textfield.dart';
import 'package:grow_learning/common/constant.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class TimerView extends GetView<HomePageController> {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Bonsai', style: tsTitleMedium,),

        Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider.builder(
              // physics: const NeverScrollableScrollPhysics(),
              options: CarouselOptions(
                viewportFraction: 0.6,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                initialPage: 1,
                onPageChanged: (index, reason) {
                  print(index);
                },
              ),
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(bonsai, width: MediaQuery.of(context).size.width * 0.5);
              },
            ),

            SleekCircularSlider(
              min: 0,
              max: 7200,
              initialValue: controller.countDownTimer.value.split(':').map(int.parse).reduce((a, b) => a * 60 + b).toDouble(),
              appearance: CircularSliderAppearance(
                  size: 280,
                  startAngle: 270,
                  angleRange: 360,

                  customWidths: CustomSliderWidths(progressBarWidth: 10),
                  customColors: CustomSliderColors(
                    progressBarColor: primaryColor,
                    dotColor: primaryColor,
                    trackColor: greyColor
                  ),

                infoProperties: InfoProperties(
                  mainLabelStyle: GoogleFonts.urbanist(
                    color: Colors.transparent,
                  ),

                )
              ),
              onChange: (double value) {
                int newMinutes = value ~/ 60;
                double newSecondsDouble = value % 60;
                int newSeconds = newSecondsDouble.toInt();
                controller.countDownTimer.value = '${newMinutes.toString().padLeft(2, '0')}:${newSeconds.toString().padLeft(2, '0')}';
              },
            )
          ],
        ),

        InkWell(
          onTap: () => Get.bottomSheet(
              backgroundColor: Colors.white,
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: ActivityBottomSheet(),
              )
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFFF9494)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFF9494),
                      shape: BoxShape.circle
                  ),),

                const SizedBox(width: 10,),

                Text('Matematika',
                  style: GoogleFonts.urbanist(
                      fontSize: 18,
                      color: Color(0xFFFF9494),
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ),
        ),

        Obx(() => Text(controller.countDownTimer.value,
          style: GoogleFonts.urbanist(
              fontSize: 84,
              color: greySoft,
              fontWeight: FontWeight.normal
          ),
        ),),

        Obx(() => controller.isStartTimer == true
            ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: CommonButton(
            text: 'Berhenti Belajar',
            onPressed: () => controller.stopTimer(),
            height: 48,
            color: dangerColor,
            style: GoogleFonts.urbanist(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,

            ),),
        )
            : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: CommonButton(
            text: 'Mulai Belajar',
            onPressed: () => controller.startTimer(),
            height: 48,
            style: GoogleFonts.urbanist(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,

            ),),
        )
        )
      ],
    );
  }
}
