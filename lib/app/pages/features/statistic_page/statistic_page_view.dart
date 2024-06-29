import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/statistic_page/statistic_page_controller.dart';
import 'package:grow_learning/common/theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticPage extends GetView<StatisticPageController> {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    gradient: LinearGradient(
                      colors: [Color(0xff22a6a6), Color(0xff27e8a6)],
                      stops: [0.25, 0.75],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Today Learning Times",
                      style: tsTitleLarge.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2 hours 13 minutes",
                      style: tsTitleLarge.copyWith(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily report",
                    style: tsTitleLarge.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: greyColor10),
                  ),
                  SvgPicture.asset("assets/svg/ic_daily_setting.svg")
                ],
              ),
              SizedBox(
                height: 25,
              ),


              Obx( ()=> controller.chartData.value.length == 0 ?
                  Center(
                    child: Text("Kamu Belum Belajar Hari ini"),
                  )
                  :

              SizedBox(
                height: 200,
                child: SfCircularChart(
                  backgroundColor: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 0),
                  borderWidth: 20,
                  enableMultiSelection: true,
                  legend: Legend(
                    isVisible: true,
                    position: LegendPosition.right,
                    overflowMode: LegendItemOverflowMode.wrap,
                  ),
                  series: [
                    DoughnutSeries<GDPData, String>(
                      dataSource: controller.chartData,
                      xValueMapper: (GDPData data, _) => data.nama,
                      yValueMapper: (GDPData data, _) => data.hour,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    )
                  ],
                ),
              ),
              ),

              SizedBox(
                height: 25,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Overall statistics",
                      style: tsTitleLarge,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset("assets/image/chart.png")
                  ],
                ),
              )
            ],
          ),
        ),
      )),
      resizeToAvoidBottomInset: false,
    );
  }
}
