import 'package:grow_learning/app/router/app_pages.dart';
import 'package:grow_learning/common/constant.dart';

import 'drawer.dart';

List<DrawerData> drawerData = [
  DrawerData(
    title: 'Home',
    icon: icHome,
    route: Routes.HOME_PAGE,
  ),
  DrawerData(
    title: 'Insight',
    icon: icInsight,
    route: '/statistic-page',
  ),
  DrawerData(
    title: 'Profile',
    icon: icProfile,
    route: Routes.PROFILE_PAGE,
  ),
  DrawerData(
    title: 'Friends',
    icon: icFriend,
    route: '/',
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