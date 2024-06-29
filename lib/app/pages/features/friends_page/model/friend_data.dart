import 'dart:ui';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/list_activity_page/model/activity.dart';
import 'package:grow_learning/common/constant.dart';

import 'friend.dart';

RxList<Friend> friend_data = [
  Friend(
      title: 'Fuad Jmk',
      image: imgAvatar,
      poin: '200'
  ),
  Friend(
      title: 'Rudi Jmk',
      image: imgAvatar,
      poin: '100',
  ),
  Friend(
      title: 'Agus Jmk',
      image: imgAvatar,
      poin: '100',
  ),
  Friend(
      title: 'Bagas Jmk',
      image: imgAvatar,
      poin: '100',
  ),
  Friend(
      title: 'Budi Jmk',
      image: imgAvatar,
      poin: '100',
  ),

].obs;
