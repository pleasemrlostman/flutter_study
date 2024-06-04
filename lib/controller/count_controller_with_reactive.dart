import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble double = 0.0.obs;
  RxString value = "얍".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "재훈", age: 33).obs;
  RxList<String> list = [""].obs;
  void increase() {
    count++;

    user(User(name: "재훈", age: 32));
    user.update((_user) {
      _user?.name = "얍";
    });

    // list.addAll();
    // list.add();
    // list.addIf(user.value.name==="개발하는 남자", "okay");
  }

  void putNumber(int number) {
    count(number);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    // 매번 값이 변경 될 ㅣ때 마다 호출
    ever(
      count,
      (_) => print("매번 호출"),
    );
    once(
      count,
      (_) => print("한번만 호출"),
    );
    debounce(
      count,
      (_) => print("마지막 변경에 한번만 호출"),
      time: Duration(seconds: 1),
    );
    interval(
      count,
      (_) => print("변경되는 동안 1초마다 호출"),
    );
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
