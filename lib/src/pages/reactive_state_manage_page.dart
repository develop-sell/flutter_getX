import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getX.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_reactive.dart';
import 'package:sample_route_manage/src/pages/state/with_getx.dart';
import 'package:sample_route_manage/src/pages/state/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());

    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태관리")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 30),),
            Obx((){
              print("Update!!");
              return Text("${Get.find<CountControllerWithReactive>().count.value}", style: TextStyle(fontSize: 50));
            }),
            // GetX(builder: (){
            //   return Text("${Get.find<CountControllerWithReactive>().count.value}", style: TextStyle(fontSize: 50));
            // })
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30),),
              onPressed: (){
                Get.find<CountControllerWithReactive>().increase();
              }
            ),
            RaisedButton(
              child: Text("5로 변경", style: TextStyle(fontSize: 30),),
              onPressed: (){
                Get.find<CountControllerWithReactive>().putNumber(5);
              }
            )
          ],
        )
      ),
    );
  }
}