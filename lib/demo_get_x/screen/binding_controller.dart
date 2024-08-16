import 'package:get/get.dart';

class DemoBindingController extends GetxController {
  var count = 0.obs;

  increment() {
    count.value++;
  }

  decrease() {
    count.value--;
  }
}