import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoStreamBuilder extends StatelessWidget {
  DemoStreamBuilder({super.key});
  final Stream<int> s = Stream.periodic(const Duration(seconds: 3), (i) => i);
  final controller = StreamController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: s,
            builder: (builderContext, asyncSnapshot) {
              if (asyncSnapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading, please wait...");
              }
              // if (asyncSnapshot.hasData) {
              //   if (asyncSnapshot.data > 10) {
              //     return Text("hello");
              //   } else {
              //     return Text("after ${asyncSnapshot.data}s");
              //   }
              // }


              if (asyncSnapshot.hasData) {
                return ElevatedButton(
                  onPressed: () {

                  },
                  child: Expanded(
                    child: Container(
                      child: Icon(Icons.add),
                    ),
                  ),
                );
              }
              return Text(asyncSnapshot.toString());
            },
          ),
        ],
      ),
    );
  }
}
