import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sample_route_manage/src/binding/binding_page.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getX.dart';
import 'package:sample_route_manage/src/controller/dependency_controller.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/binding.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';
import 'package:sample_route_manage/src/pages/next.dart';
import 'package:sample_route_manage/src/pages/user.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      initialRoute: "/",
      // routes: {
      //   "/first" : (context) => FirstNamedPage(),
      //   "/second" : (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name:"/", page: ()=>Home(), transition: Transition.zoom),
        GetPage(name:"/first", page: ()=>FirstNamedPage(), transition: Transition.zoom),
        GetPage(name:"/second", page: ()=>SecondNamedPage(), transition: Transition.zoom),
        GetPage(name:"/next", page: ()=>NextPage(), transition: Transition.zoom),
        GetPage(name:"/user", page: ()=>UserPage()),
        GetPage(
          name:"/binding", 
          page: ()=>BindingPage(), 
          binding: BindingPageBinding(),
        ),
      ],
    );
  }
}

