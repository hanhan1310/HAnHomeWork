import 'package:flutter/material.dart';

class Demo_Grid_View extends StatefulWidget {
  const Demo_Grid_View({super.key});

  @override
  State<Demo_Grid_View> createState() => _Demo_Grid_ViewState();
}

class _Demo_Grid_ViewState extends State<Demo_Grid_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue
            ),
            padding: EdgeInsets.symmetric(horizontal: 73, vertical: 60),
            child: Text("?", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue
            ),
            padding: EdgeInsets.symmetric(horizontal: 73, vertical: 60),
            child: Text("?", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue
            ),
            padding: EdgeInsets.symmetric(horizontal: 73, vertical: 60),
            child: Text("?", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue
            ),
            padding: EdgeInsets.symmetric(horizontal: 73, vertical: 60),
            child: Text("?", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue
            ),
            padding: EdgeInsets.symmetric(horizontal: 73, vertical: 60),
            child: Text("?", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue
            ),
            padding: EdgeInsets.symmetric(horizontal: 73, vertical: 60),
            child: Text("?", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
