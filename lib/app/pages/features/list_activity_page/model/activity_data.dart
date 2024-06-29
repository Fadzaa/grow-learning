import 'dart:ui';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/list_activity_page/model/activity.dart';

RxList<Activity> activity_data = [
  Activity(
      title: 'Matematika',
      color: const Color(0xFFFF9494)
  ),
  Activity(
      title: 'IPA',
      color: const Color(0xFFFFC794)
  ),
  Activity(
      title: 'Bahasa Indonesia',
      color: const Color(0xFFA0DF4F)
  ),
  Activity(
      title: 'Bahasa Inggris',
      color: const Color(0xFF4FDFCE)
  ),
  Activity(
      title: 'PKN',
      color: const Color(0xFF4F77DF)
  ),
  Activity(
      title: 'Fisika',
      color: const Color(0xFF7D4FDF)
  ),
  Activity(
      title: 'Biologi',
      color: const Color(0xFFDF4FD9)
  )
].obs;
