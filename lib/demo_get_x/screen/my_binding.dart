import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:project_buoi_13/demo_get_x/screen/binding_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DemoBindingController());
  }
}
