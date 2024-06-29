import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/friends_page/model/friend.dart';

import 'model/friend_data.dart';
import 'model/friend_suggestion_data.dart';

class FriendsPageController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxList<Friend> all_friends = friend_data;
  RxList<Friend> suggestion_friends = friend_suggestion_data;
  RxList<Friend> combined_list = <Friend>[].obs;

  @override
  void onInit() {
    super.onInit();
    searchController.addListener(() {
      searchActivity(searchController.text);
    });
    combined_list.assignAll(all_friends);
  }

  void searchActivity(String value) {
    if (value.isEmpty) {
      combined_list.assignAll(all_friends);
    } else {
      combined_list.assignAll(all_friends.where((element) => element.title.contains(value)).toList());
    }
  }

  void addFriend(Friend friend) {
    all_friends.add(friend);
    suggestion_friends.remove(friend);
    combined_list.assignAll(all_friends);
  }
}



