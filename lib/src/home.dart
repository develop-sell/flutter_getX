import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/dependencys/dependency_manage_page.dart';
import 'package:sample_route_manage/src/pages/normal/first.dart';
import 'package:sample_route_manage/src/pages/reactive_state_manage_page.dart';
import 'package:sample_route_manage/src/pages/simple_state_manage_page%20copy.dart';

class Home extends StatelessWidget {
  const Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("일반적인 라우트"), 
              onPressed: (){
                Get.to(() => FirstPage());
              }
            ),
            RaisedButton(
              child: Text("named 라우트"), 
              onPressed: (){
                Get.toNamed("/first");
                // Navigator.of(context).pushNamed("/first");
              }
            ),
            RaisedButton(
              child: Text("Args 전달 라우트"), 
              onPressed: (){
                Get.toNamed("/next", arguments: User(name: "GetX변경", age: 23));
              }
            ),
            RaisedButton(
              child: Text("동적 url"), 
              onPressed: (){
                Get.toNamed("/user?name=테스트&age=22");
              }
            ),
            RaisedButton(
              child: Text("단순상태관리"), 
              onPressed: (){ 
                Get.to(SimpleStateManagePage());
              }
            ),
            RaisedButton(
              child: Text("반응형상태관리"), 
              onPressed: (){ 
                Get.to(ReactiveStateManagePage());
              }
            ),
            RaisedButton(
              child: Text("의존성관리"), 
              onPressed: (){ 
                Get.to(DependencyManagePage());
              }
            ),
            RaisedButton(
              child: Text("바인딩 관리"), 
              onPressed: (){ 
                Get.toNamed("/binding");
              }
            ),
          ],
        )
      ),
    );
  }
}

class User{
  String name;
  int age;
  User({this.name, this.age});
}