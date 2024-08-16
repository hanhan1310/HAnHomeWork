import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab4 extends StatefulWidget {
  const Lab4({super.key});

  @override
  State<Lab4> createState() => _Lab4State();
}

class _Lab4State extends State<Lab4> {
  double rating = 2.0;
  StreamController streamController = StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamController.sink.add(rating);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder(
              stream: streamController.stream,
              builder: (context, snapShot) {
                if (snapShot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapShot.hasData) {
                  return Text("${snapShot.data}");
                } else {
                  return CircularProgressIndicator();
                }
              }),
          Text(rating.toString()),
          CupertinoSlider(
              value: rating,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              activeColor: Colors.blueAccent,
              onChanged: (newRating) {
                setState(() {
                  rating = newRating;
                });
              }),
        ],
      ),
    );
  }
}
