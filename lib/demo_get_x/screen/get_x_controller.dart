
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetXControllerDemo extends GetxController{
  var count = 0.obs;

  increment() {
    count.value++;
  }

  decrease() {
    count.value--;
  }

  String value = "HI";
  int counting = 1;
  void changed() {
    counting++;
    if(counting % 2 == 0) {
      value = "BYE";
      update();
    } else {
      value = "HI";
      update();
    }
  }

}