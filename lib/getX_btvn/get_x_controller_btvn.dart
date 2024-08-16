import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_buoi_13/getX_btvn/get_x_screen2_btvn.dart';
import 'package:project_buoi_13/getX_btvn/get_x_screen_btvn.dart';

class GetXControllerBTVN extends GetxController {
  void goToSignUpScreen (){
    Get.offAll(GetXSignIScreen());
  }

  var userName = "".obs;
  var password = "".obs;
  var confirmPassword = "".obs;
  var fullName = ''.obs;
  var address = ''.obs;
  var sex = ''.obs;


  var isNameValid = false.obs;
  var isPassValid = false.obs;
  var isComfirmPassTrue = false.obs;
  var isCheckAllValid = false.obs;

  void checkAllValid (){
    if(isNameValid.value && isPassValid.value && isComfirmPassTrue.value &&
    fullName.value.isNotEmpty && address.value.isNotEmpty && sex.value.isNotEmpty){
      isCheckAllValid.value = true;
    }
  }

  void validateUserName (String value){
    userName.value = value;
    isNameValid.value = value.length > 6;
    checkAllValid();
  }

  void validatePass (String value){
    password.value = value;
    isPassValid.value = value.length > 6;
    validateComfirmPass(confirmPassword.value);
    checkAllValid();
  }

  void validateComfirmPass (String value){
    confirmPassword.value = value;
    isComfirmPassTrue.value = value == password.value;
    checkAllValid();

  }

  void backToLoginScreen (){
    Get.offAll(GetXScreenBTVN());
    Get.deleteAll();
  }
}