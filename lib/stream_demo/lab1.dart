import 'dart:async';

import 'package:flutter/material.dart';

class Lab1 extends StatefulWidget {
  const Lab1({super.key});

  @override
  State<Lab1> createState() => _Lab1State();
}

class _Lab1State extends State<Lab1> {
  final StreamController streamController = StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamController.addStream(Stream.periodic(Duration(seconds: 5), (i){
      if(i > 12){
        return "12";
      } else {
        return i;
      }
    }));
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
        child: StreamBuilder(
          stream: streamController.stream,
          builder: (context, snapShot){
            if(snapShot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            if(snapShot.hasData){
              return Text("${snapShot.data}");
            }
            return Text(snapShot.toString());
          },
        ),
      ),
    );
  }
}
