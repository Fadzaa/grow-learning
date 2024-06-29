import 'dart:ui';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/list_activity_page/model/activity.dart';
import 'package:grow_learning/common/constant.dart';

import 'friend.dart';

RxList<Friend> friend_suggestion_data = [
  Friend(
      title: 'Nopal Jmk',
      image: imgAvatar,
      poin: '600'
  ),
  Friend(
    title: 'Tronot Jmk',
    image: imgAvatar,
    poin: '600',
  ),

].obs;