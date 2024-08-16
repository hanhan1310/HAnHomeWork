import 'package:flutter/material.dart';

class DemoMVVMView extends StatefulWidget {
  const DemoMVVMView({super.key});

  @override
  State<DemoMVVMView> createState() => _DemoMVVMViewState();
}

class _DemoMVVMViewState extends State<DemoMVVMView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo MVVM View"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("hello"),
      ),
    );
  }
}

