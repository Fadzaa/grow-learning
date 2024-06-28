import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grow_learning/common/theme.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'datasources.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              children: [
                Text(
                  "LeaderBoard",
                  style: tsLabelLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ToggleSwitch(
                  minWidth: MediaQuery.of(context).size.width / 3,
                  customTextStyles: [
                    tsLabelLarge.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    tsLabelLarge.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)
                  ],
                  cornerRadius: 20.0,
                  activeBgColors: [
                    const [primaryColor],
                    const [primaryColor]
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Color(0xffa8a8a8),
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: ['Weekly', 'All Time'],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      UserList userlist = data[index];
                      return LeaderboardCard(userlist, index);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget LeaderboardCard(UserList user, int index) {
    return ListTile(
      visualDensity: VisualDensity(vertical: 2),
      leading: Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 2), shape: BoxShape.circle),
          child: Text(
            '${index + 1}',
            style: tsLabelLarge.copyWith(
                fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Image.asset(
          user.userImage,
          scale: 0.9,
        ),
      ]),
      title: Text(user.userName,
          style: tsLabelLarge.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          )),
      subtitle: Text(user.userPoin,
          style: tsLabelLarge.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
