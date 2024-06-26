import 'package:flutter/material.dart';

class DemoBottomSheet extends StatefulWidget {
  const DemoBottomSheet({super.key, required this.count});

  final int count;

  @override
  State<DemoBottomSheet> createState() => _DemoBottomSheetState();
}

class _DemoBottomSheetState extends State<DemoBottomSheet> {
  late int _count;
  @override
  void initState() {
    super.initState();
    _count = widget.count;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void callback({required int countNum}){}

  @override
  Widget build(BuildContext context) {
    // Function({required int count,})

    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo bottom sheet"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: TextButton(
        onPressed: () {

        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blueAccent,
          ),
          child: const Icon(Icons.add),
        ),
      ),
      body: Center(
        child: Text("We have $_count Gojo products"),
      ),
    );
  }
}

