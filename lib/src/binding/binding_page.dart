

import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getX.dart';

class BindingPageBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(CountControllerWithGetx());
  }
}