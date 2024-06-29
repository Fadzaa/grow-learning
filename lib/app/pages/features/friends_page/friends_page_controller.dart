import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/friends_page/model/friend.dart';

import 'model/friend_data.dart';
import 'model/friend_suggestion_data.dart';

class FriendsPageController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxList<Friend> list_friend = friend_data;
  RxList<Friend> all_friends = friend_data;
  RxList<Friend> suggestion_friends = friend_suggestion_data;

  @override
  void onInit() {
    super.onInit();
    searchController.addListener(() {
      searchActivity(searchController.text);
    });
  }

  void searchActivity(String value) {
    if (value.isEmpty) {
      list_friend.assignAll(all_friends); // Reset to original list if search field is empty
    } else {
      list_friend.assignAll(all_friends.where((element) => element.title.contains(value)).toList());
    }
  }
}


