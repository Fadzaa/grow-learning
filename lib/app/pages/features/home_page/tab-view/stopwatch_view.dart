import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_learning/app/pages/features/home_page/home_page_controller.dart';
import 'package:grow_learning/app/pages/global_component/common_button.dart';
import 'package:grow_learning/common/theme.dart';
import 'package:grow_learning/app/pages/global_component/common_textfield.dart';
import 'package:grow_learning/common/constant.dart';


class StopwatchView extends GetView<HomePageController> {
  const StopwatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Bonsai', style: tsTitleMedium,),

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

        Obx(() => Text(controller.countDown.value,
          style: GoogleFonts.urbanist(
              fontSize: 84,
              color: greySoft,
              fontWeight: FontWeight.normal
          ),
        ),),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
          child: CommonButton(
            text: 'Mulai Belajar',
            onPressed: () => controller.startStopwatch(),
            height: 48,
            style: GoogleFonts.urbanist(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,

            ),),
        )
      ],
    );
  }
}

class ActivityBottomSheet extends GetView<HomePageController> {
  const ActivityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonTextField(
          controller: controller.searchController,
          hintText: 'Search Activity',
          prefixIcon: icSearch,
          onSubmitted: (value) {
            controller.searchActivity(value);
          },
        ),

        const SizedBox(height: 20,),

        Expanded(
            child: Obx(() => ListView.builder(
                itemCount: controller.list_activity.length,
                itemBuilder: (context, index) {

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: controller.list_activity[index].color,
                                  shape: BoxShape.circle
                              ),
                            ),

                            const SizedBox(width: 20,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.list_activity[index].title,
                                  style: GoogleFonts.urbanist(
                                      color: blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),),
                              ],
                            )
                          ],
                        ),

                        const SizedBox(height: 10,),

                        const Divider(
                          color: Color(0xFFE5E5E5),
                          thickness: 1,
                        )
                      ],
                    ),
                  );
                }
            ))
        ),


        Obx(() => InkWell(
          onTap: () {
            controller.selectActivity();
          },
          child: controller.isActivitySelected.value
              ?  Stack(
            alignment: Alignment.centerRight,
            children: [
              TextField(
                controller: controller.activityController,
                decoration: InputDecoration(
                    hintText: 'Add New Activity',
                    hintStyle: GoogleFonts.urbanist(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    ),
                    filled: false,
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor)
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor)
                    )
                ),
              ),
              InkWell(
                onTap: () => controller.addActivity(),
                child: Icon(Icons.check),
              )
            ],
          )
              : Column(
            children: [
              const Divider(
                color: Color(0xFFE5E5E5),
                thickness: 1,
              ),

              const SizedBox(height: 10,),

              Row(
                children: [
                  const Icon(Icons.add, color: greyColor, size: 25,),

                  const SizedBox(width: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Add New Activity',
                        style: GoogleFonts.urbanist(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        ),),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 10,),

              const Divider(
                color: Color(0xFFE5E5E5),
                thickness: 1,
              )
            ],
          ),
        ))
      ],
    );
  }
}

