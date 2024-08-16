import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_buoi_13/getX_btvn/get_x_controller_btvn.dart';
import 'package:project_buoi_13/getX_btvn/get_x_screen_btvn.dart';

class GetXSignIScreen extends StatefulWidget {
  const GetXSignIScreen({super.key});

  @override
  State<GetXSignIScreen> createState() => _GetXSignIScreenState();
}

class _GetXSignIScreenState extends State<GetXSignIScreen> {
  @override
  Widget build(BuildContext context) {
    final GetXControllerBTVN _controller = Get.put(GetXControllerBTVN());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(() => TextFormField(
                onChanged: (value) => _controller.validateUserName(value),
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  labelText: "Username",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorText: _controller.isNameValid.value ? null : "Nhap lai username!",
                ),
              ),),
              SizedBox(height: 10,),
              Obx(() => TextFormField(
                style: TextStyle(fontSize: 10),
                onChanged: _controller.validatePass,
                decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorText: _controller.isPassValid.value ? null : "Nhap lai pass!",
                ),
              ),),
              SizedBox(height: 10,),
              Obx(() => TextFormField(
                style: TextStyle(fontSize: 10),
                onChanged: (value) => _controller.validateComfirmPass(value),
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorText: _controller.isComfirmPassTrue.value ? null : "Pass khong trung khop!",
                ),
              ),),
              SizedBox(height: 10,),
              TextFormField(
                onChanged: (value){
                  _controller.fullName.value = value;
                  _controller.checkAllValid();
                },
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  labelText: "Fullname",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              TextFormField(
                onChanged: (value){
                  _controller.address.value = value;
                  _controller.checkAllValid();
                },
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  labelText: "Address",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                onChanged: (value){
                  _controller.sex.value = value;
                  _controller.checkAllValid();
                },
                style: TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  labelText: "Sex",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  _controller.isCheckAllValid.value ? _controller.backToLoginScreen() : "Vui long nhap lai thong tin";
                },
                child: Text("Done"),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
