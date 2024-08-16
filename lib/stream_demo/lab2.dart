import 'dart:async';

import 'package:flutter/material.dart';

class Lab2 extends StatefulWidget {
  const Lab2({super.key});

  @override
  State<Lab2> createState() => _Lab2State();
}

class _Lab2State extends State<Lab2> {
  late StreamController streamController = StreamController();

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
                if (snapShot.connectionState == ConnectionState.none) {
                  return CircularProgressIndicator();
                }
                if (snapShot.hasData) {
                  return Text("${snapShot.data}");
                }
                return Text(snapShot.toString());
              },
            ),
            ElevatedButton(
              onPressed: () {
                streamController.addStream(Stream.periodic(Duration(seconds: 3), (i) => "done"));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
