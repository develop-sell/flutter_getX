import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getX.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetx>(builder: (_){
            return Text(
              _.count.toString(),
              style: TextStyle(fontSize: 40),
            );
          }),
          RaisedButton(
            onPressed: (){
              // Get.find<CountControllerWithGetx>().increase();

              CountControllerWithGetx.to.increase();
            },
          ),
        ],
      )
    );
  }
}