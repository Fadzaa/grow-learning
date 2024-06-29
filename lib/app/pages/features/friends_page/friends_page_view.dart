import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../common/constant.dart';
import '../../../../common/dimensions.dart';
import '../../../../common/theme.dart';
import '../../../router/app_pages.dart';
import '../../global_component/common_textfield.dart';
import 'friends_page_controller.dart';

class FriendsPageView extends GetView<FriendsPageController> {
  FriendsPageView({
    super.key
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor50,

      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(35),
              child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.arrow_back_ios, color: blackColor, size: 25,),
                        const Spacer(),
                        Text('Friend List',
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
                      hintText: 'Search Friend',
                      prefixIcon: icSearch,
                      onSubmitted: (value) {
                        controller.searchActivity(value);
                      },
                    ),
                    const SizedBox(height: 20,),
                    Expanded(
                      child: Obx(() => ListView.builder(
                          itemCount: controller.list_friend.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50, // Changed from 10 to 50 for a larger image
                                        height: 50, // Changed from 10 to 50 for a larger image
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(controller.list_friend[index].image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(controller.list_friend[index].title,
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
                      )),
                    ),
                    const SizedBox(height: 20,),
                    Divider(color: blackColor, height: 2,),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Friend Suggestion',
                          style: GoogleFonts.urbanist(
                              color: blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Expanded(
                      child: Obx(() => ListView.builder(
                          itemCount: controller.suggestion_friends.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 50, // Changed from 10 to 50 for a larger image
                                            height: 50, // Changed from 10 to 50 for a larger image
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(controller.suggestion_friends[index].image),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 20,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(controller.suggestion_friends[index].title,
                                                style: GoogleFonts.urbanist(
                                                    color: blackColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700
                                                ),),
                                            ],
                                          )
                                        ],
                                      ),
                                      InkWell(child: Icon(Icons.add_circle, size: 24, color: greyColor,)),

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
                      )),
                    ),
                  ]
              ),
            )
        ),
      ),

    );
  }
}
