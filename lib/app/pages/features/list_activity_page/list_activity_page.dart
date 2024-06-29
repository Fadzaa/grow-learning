import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_learning/app/pages/global_component/common_textfield.dart';
import 'package:grow_learning/common/constant.dart';
import 'package:grow_learning/common/theme.dart';
import 'list_activity_controller.dart';

class ListActivityView extends GetView<ListActivityController> {
  const ListActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.arrow_back_ios, color: blackColor, size: 25,),

                  const Spacer(),
                  
                  Text('Activity List',
                  style: GoogleFonts.urbanist(
                    color: blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),),

                  const Spacer()

                ],
              ),

              const SizedBox(height: 30,),

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
            ]
          ),
        )
      ),
    );
  }
}

