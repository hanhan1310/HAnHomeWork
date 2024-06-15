import 'package:flutter/material.dart';

class Chest_Board extends StatefulWidget {
  const Chest_Board({super.key});

  @override
  State<Chest_Board> createState() => _Chest_BoardState();
}

class _Chest_BoardState extends State<Chest_Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chest"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Container(
          height: 300,
          width: 300,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
              ),
              itemCount: 64,
              itemBuilder: (context, index){
                int row = index ~/ 8;
                int col = index % 8;
                bool isWhite = (row % 2 == 0 && col % 2 == 0) || (row % 2 == 1 && col % 2 == 1);
                Color color = isWhite ? Colors.black : Colors.white;
                return Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: color,
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
