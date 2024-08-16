import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_buoi_13/getX_btvn/get_x_controller_btvn.dart';
import 'package:project_buoi_13/getX_btvn/get_x_screen2_btvn.dart';

class GetXScreenBTVN extends StatefulWidget {
  const GetXScreenBTVN({super.key});

  @override
  State<GetXScreenBTVN> createState() => _GetXScreenBTVNState();
}

class _GetXScreenBTVNState extends State<GetXScreenBTVN> {
  @override
  Widget build(BuildContext context) {
    final GetXControllerBTVN _controller = Get.put(GetXControllerBTVN());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: GetBuilder<GetXControllerBTVN>(
        builder: (GetXControllerBTVN controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Username:"),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                Text("Password:"),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    _controller.goToSignUpScreen();
                  },
                  child: Text("Sign in"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
