import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_buoi_13/mvvm_demo/Lab2_view_model/Lab2_view_model.dart';

class Lab2View extends StatefulWidget {
  const Lab2View({super.key});

  @override
  State<Lab2View> createState() => _Lab2ViewState();
}

class _Lab2ViewState extends State<Lab2View> {
  StreamController streamController = StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamController.add("hello");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: streamController.stream,
              builder: (context, snapShot) {
                if (snapShot.connectionState == ConnectionState.waiting) {
                  return Text("");
                } else {
                  if (snapShot.hasData) {
                    return Text("${snapShot.data}");
                  } else {
                    return Text("");
                  }
                }
              },
            ),
            ElevatedButton(onPressed: (){
              Lab2VM.returnNewValue(streamController);
            }, child: Icon(Icons.add),),
          ],
        ),
      ),
    );
  }
}
