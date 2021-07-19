import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getX.dart';


class WithGetX extends StatelessWidget {
  WithGetX({ Key key }) : super(key: key);

  CountControllerWithGetx _controllerWithGetx = Get.put(CountControllerWithGetx()); // 2번 방식

  Widget _plusButton(){
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30),),
      onPressed: (){
        Get.find<CountControllerWithGetx>().increase();
        // _controllerWithGetx.increase(); // 2번 방식
        
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30),),
          GetBuilder<CountControllerWithGetx>(
            builder: (controller){
              return Text("${controller.count}", style: TextStyle(fontSize: 50),);
            },
          ),

          _plusButton(),
          
        ],
      )
    );
  }
}