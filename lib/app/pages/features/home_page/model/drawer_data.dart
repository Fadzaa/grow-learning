import 'package:grow_learning/app/router/app_pages.dart';
import 'package:grow_learning/common/constant.dart';

import 'drawer.dart';

List<DrawerData> drawerData = [
  DrawerData(
    title: 'Statistic',
    icon: icInsight,
    route: Routes.STATISTIK_PAGE,
  ),
  DrawerData(
    title: 'Profile',
    icon: icProfile,
    route: Routes.PROFILE_PAGE,
  ),
  DrawerData(
    title: 'Friends',
    icon: icFriend,
    route: Routes.FRIENDS_PAGE,
  ),
  DrawerData(
    title: 'Tag Activity',
    icon: icTag,
    route: Routes.LIST_ACTIVITY_PAGE,
  ),
  DrawerData(
    title: 'Leaderboard',
    icon: icLeaderboard,
    route: Routes.LEADERBOARD_PAGE,
  ),
];