import 'package:flutter/material.dart';

class Demo_check_box extends StatefulWidget {
  const Demo_check_box({super.key});

  @override
  State<Demo_check_box> createState() => _Demo_check_boxState();
}

class _Demo_check_boxState extends State<Demo_check_box> {
  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Checkbox(
        tristate: true,
        value: isChecked,
        onChanged: (bool? value) {
          isChecked = true;
          setState(() {

          });
        },
      ),
    );
  }
}
