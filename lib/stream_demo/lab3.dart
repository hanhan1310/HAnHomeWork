import 'dart:async';

import 'package:flutter/material.dart';

class Lab3 extends StatefulWidget {
  const Lab3({super.key});

  @override
  State<Lab3> createState() => _Lab3State();
}

class _Lab3State extends State<Lab3> {
  final StreamController streamController = StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamController.addStream(Stream.periodic(Duration(seconds: 1), (i){
      if(i > 300){
        return streamController.onPause;
      } else {
        return "${i~/60}p${i%60}s";
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: streamController.stream,
          builder: (context, snapShot){
            if(snapShot.hasData){
              return Text(snapShot.data);
            }
            return Text(snapShot.data);
          },
        ),
      ),
    );
  }
}
