import 'package:get/get.dart';

class User{
  String name;
  int age;
  User({this.name, this.age});
}


class CountControllerWithReactive extends GetxController{
  
  
  RxInt count = 0.obs;
  Rx<User> user = User(name: "세일", age: 25).obs; // 
  RxList<String> list = [""].obs; // 리스트 타입

  void increase(){
    count ++;
  }

  void putNumber(int value){
    count(value); // 해당 값으로 변경 
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번 호출")); // 매번 값이 변경될 때 마다 호출 (여기선 count가 바뀔때마다 호출)
    once(count, (_) => print("최초 한번만 호출")); 
    debounce(count, (_) => print("마지막 변경에 한번만 호출"), time: Duration(seconds: 1)); 
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"), time: Duration(seconds: 1)); 
    super.onInit();
  }

  void updateUser(User updateUser){
    user.update((_user){
      _user.name = updateUser.name;
      _user.age = updateUser.age;
    });
  }

  void updateList(){
    // list.add();
    // list.addAll();
    // list.addif(user.value.name == "세일", "true");
  }
}