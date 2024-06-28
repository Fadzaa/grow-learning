List<UserList> data = [
  UserList(
      userImage: "assets/image/user1.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user2.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user3.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user4.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user5.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user5.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user6.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user7.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),
  UserList(
      userImage: "assets/image/user7.png",
      userName: "Yasa Kafi",
      userPoin: "1,899 Quiz Points",
      userDate: DateTime.now()),

];

class UserList {
  String userImage = "";
  String userName = "";
  String userPoin = "";
  DateTime userDate = DateTime.now();

  UserList({
    required this.userImage,
    required this.userName,
    required this.userPoin,
    required this.userDate,
  });
}
