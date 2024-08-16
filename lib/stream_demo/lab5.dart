import 'dart:async';

import 'package:flutter/material.dart';

class Lab5 extends StatefulWidget {
  const Lab5({super.key});

  @override
  State<Lab5> createState() => _Lab5State();
}

class _Lab5State extends State<Lab5> {
  StreamController streamController = StreamController();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LinearProgressIndicator(
            value: 2,
          ),

        ],
      ),
    );
  }
}
