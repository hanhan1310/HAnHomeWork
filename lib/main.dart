import 'package:an_flutter_10/test/bai_1.dart';
import 'package:an_flutter_10/test/bai_2.dart';
import 'package:an_flutter_10/test/bai_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:  Bai1ScreenLogin(), ///Screen login and navigate to text screen

      ///Screen shopee
      home:  Bai3(),
    );
  }
}

