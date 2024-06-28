import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_learning/app/pages/features/home_page/tab-view/stopwatch_view.dart';
import 'package:grow_learning/common/theme.dart';
import 'home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icon_drawer.svg'),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dodi Wicakson',
                        style: GoogleFonts.urbanist(
                          fontSize: 16,
                          color: blackColor,
                          fontWeight: FontWeight.w500
                        ),
                      ),

                      const SizedBox(width: 20,),

                      Image.asset('assets/user_avatar.png', width: 35,)
                    ],
                  )
                ],
              ),

              const SizedBox(height: 30,),

              TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: primaryColor,
                  labelColor: primaryColor,
                  unselectedLabelColor: const Color(0xFF707070).withOpacity(0.7),
                  labelStyle: tsBodyMedium.copyWith(
                      fontWeight: FontWeight.w600
                  ),
                  unselectedLabelStyle: tsBodyMedium.copyWith(
                      fontWeight: FontWeight.w600
                  ),
                  dividerColor: Colors.transparent,
                  tabAlignment: TabAlignment.center,
                  labelPadding: const EdgeInsets.only(right: 20),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  isScrollable: false,
                  controller: controller.tabController,
                  tabs: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Tab(text: "Stopwatch")),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Tab(text: "Timer")
                    ),
                  ]
              ),

              const SizedBox(height: 20,),

              Expanded(
                child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      StopwatchView(),
                      Container(child: Center(child: Text('Timer'),))
                    ]
                ),
              )
            ]
          ),
        )
      ),
    );
  }
}

