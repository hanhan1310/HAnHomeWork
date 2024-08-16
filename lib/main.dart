import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project_buoi_13/Kiem_tra/Bai_kiem_tra.dart';
import 'package:project_buoi_13/btvn_humans/screen.dart';
import 'package:project_buoi_13/demo_get_x/screen/my_binding.dart';
import 'package:project_buoi_13/demo_get_x/screen/ui_screen.dart';
import 'package:project_buoi_13/getX_btvn/get_x_screen_btvn.dart';
import 'package:project_buoi_13/mvvm_demo/Lab1_view_model/Lab1_view.dart';
import 'package:project_buoi_13/mvvm_demo/Lab1_view_model/lab1_view_model.dart';
import 'package:project_buoi_13/mvvm_demo/Lab2_view_model/Lab2_view.dart';

import 'package:project_buoi_13/mvvm_demo/view/mvvm_demo_view.dart';
import 'package:project_buoi_13/stream_demo/demo_streamBuilder.dart';
import 'package:project_buoi_13/stream_demo/lab1.dart';
import 'package:project_buoi_13/stream_demo/lab4.dart';

import 'stream_demo/lab2.dart';
import 'stream_demo/lab3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBinding(),
      getPages: [
        GetPage(
            name: "/getxscreen",
            page: () => UIBindingDemo(),
            binding: MyBinding())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const An_flutter_10(),
      // home:  Lab1(),
      // home:  DemoMVVMView(),
      // home:  Lab2(),
      // home:  Lab3(),
      // home:  Lab1MVVM(),
      // home:  Lab4(),
      home: GetXScreenBTVN(),
    );
  }
}
