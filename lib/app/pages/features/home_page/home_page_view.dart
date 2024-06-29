import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_learning/app/pages/features/home_page/tab-view/stopwatch_view.dart';
import 'package:grow_learning/app/router/app_pages.dart';
import 'package:grow_learning/common/constant.dart';
import 'package:grow_learning/common/theme.dart';
import 'home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => _scaffoldKey.currentState!.openDrawer(),
                      child: SvgPicture.asset('assets/svg/icon_drawer.svg')
                  ),

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

                      Image.asset('assets/image/user_avatar.png', width: 35,)
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
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.85,
        backgroundColor: Colors.white,
        child: Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 5),
            children: <Widget>[
              DrawerHeader(
                child: Row(
                    children: [
                      Image.asset('assets/image/user_avatar.png', width: 50,),
                      const SizedBox(width: 20,),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dodi Wicakson',
                              style: GoogleFonts.urbanist(
                                  fontSize: 18,
                                  color: blackColor,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'GrowLea@gmail.com',
                              style: GoogleFonts.urbanist(
                                  fontSize: 16,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ]
                      )
                    ]
                ),
              ),

              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(icHome, width: 25),
                    const SizedBox(width: 20,),
                    Text('Home', style: GoogleFonts.urbanist(
                        fontSize: 18,
                        color: greyColor,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(icInsight, width: 25),
                    const SizedBox(width: 20,),
                    Text('Insight', style: GoogleFonts.urbanist(
                        fontSize: 18,
                        color: greyColor,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(icProfile, width: 25),
                    const SizedBox(width: 20,),
                    Text('Profile', style: GoogleFonts.urbanist(
                        fontSize: 18,
                        color: greyColor,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.55),

              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(icLogout, width: 25),
                    const SizedBox(width: 20,),
                    Text('Logout', style: GoogleFonts.urbanist(
                        fontSize: 18,
                        color: const Color(0xFFFF575F),
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                onTap: () => Get.offAllNamed(Routes.LOGIN_PAGE),
              ),


            ],
          ),
        )
      )
    );
  }
}

