import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("뒤로 이동"), 
              onPressed: (){
                // Navigator.of(context).pop();
                Get.back();
              }
            ),
            RaisedButton(
              child: Text("홈으로 이동"), 
              onPressed: (){
                Get.offAll(Home());
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => Home()), 
                //   (route) => false
                // );
              }
            )
          ],
        )
      ),
    );
  }
}