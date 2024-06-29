import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/constant.dart';
import '../../../../common/dimensions.dart';
import '../../../../common/theme.dart';
import 'profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
   ProfilePageView({
    super.key
  });

  final ValueNotifier<double> _valueNotifier = ValueNotifier<double>(0);

  int i = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor50,
      appBar: AppBar(
        backgroundColor: baseColor,
        title: Center(
          child: Text('Profile', style: tsTitleMedium.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: Dimensions.marginSizeSuperLarge),
            padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeLarge, horizontal: Dimensions.paddingSizeLarge),
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(imgAvatar),
                    ),
                    SizedBox(height: 20,),
                    Text('Kita Poke', style: tsTitleSmall.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                    SizedBox(height: 20,),
                    Text('Rekayasa Perangkat Lunak', style: tsBodyLarge.copyWith(color: greySoft, fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Image.asset(imgFlame, width: 30, height: 30,),
                            SizedBox(height: 15,),
                            Text('3', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Text('Day Streak', style: tsBodyMedium.copyWith(color: greySoft, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(icElectric, width: 30, height: 30,),
                            SizedBox(height: 15,),
                            Text('3', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Text('Xp Total', style: tsBodyMedium.copyWith(color: greySoft, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(imgDiamond, width: 30, height: 30,),
                            SizedBox(height: 15,),
                            Text('3', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Text('League', style: tsBodyMedium.copyWith(color: greySoft, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),



                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: blackColor,
                            style: BorderStyle.solid,
                            width: 2,
                          )
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.ios_share, size: 24,),
                            SizedBox(width: 10,),
                            Text('SHARE MY PROGRESS', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Friends', style: tsTitleSmall.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                      Row(
                        children: [
                          Icon(Icons.add, size: 24,),
                          SizedBox(width: 10,),
                          Text('Add Friends', style: tsTitleSmall.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: baseColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeLarge, horizontal: Dimensions.paddingSizeLarge),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(imgAvatar),
                          ),
                          SizedBox(width: 10,),
                          Text('Kita Poke', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(icElectric, width: 30, height: 30,),
                          SizedBox(width: 10,),
                          Text('872', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Badges', style: tsTitleSmall.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: baseColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeLarge, horizontal: Dimensions.paddingSizeLarge),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(icBadge, width: 40, height: 40,),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kita Poke', style: tsBodyLarge.copyWith(color: blackColor, fontWeight: FontWeight.w600),),
                              Text('poke tetaplah poke, akokawo', style: tsBodyMedium.copyWith(color: greySoft, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ],
                      ),
                      DashedCircularProgressBar(
                        valueNotifier: _valueNotifier,
                        progress: 90,
                        startAngle: 225,
                        sweepAngle: 270,
                        foregroundColor: Colors.green,
                        backgroundColor: const Color(0xffeeeeee),
                        foregroundStrokeWidth: 5,
                        backgroundStrokeWidth: 5,
                        animation: true,
                        seekSize: 6,
                        seekColor: const Color(0xffeeeeee),
                        width: 40,
                        height: 40,
                        child: Center(
                          child: ValueListenableBuilder(
                              valueListenable: _valueNotifier,
                              builder: (_, double value, __) => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '${value.toInt()}%',
                                    style: tsLabelLarge.copyWith(color: blackColor, fontWeight: FontWeight.w400),
                                  ),

                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
