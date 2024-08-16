import 'dart:async';

import 'package:flutter/material.dart';

import 'lab1_view_model.dart';

class Lab1MVVM extends StatefulWidget {
  const Lab1MVVM({super.key});

  @override
  State<Lab1MVVM> createState() => _Lab1MVVMState();
}

class _Lab1MVVMState extends State<Lab1MVVM> {
  StreamController streamController = StreamController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Lab1VM.checking(streamController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Lab1VM.checking(streamController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: streamController.stream,
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              if (snapShot.hasData) {
                return Text("${snapShot.data}");
              } else {
                return Text("loi data");
              }
            }
          },
        ),
      ),
    );
  }
}
