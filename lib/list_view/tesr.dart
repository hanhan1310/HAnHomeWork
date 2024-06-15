import 'package:flutter/material.dart';
import 'package:project_buoi_13/image_class.dart';

class List_view2 extends StatefulWidget {
  const List_view2({super.key});

  @override
  State<List_view2> createState() => _List_view2State();
}

class _List_view2State extends State<List_view2> {
  // List of items for the horizontal ListView
  List<String> _horizontalItems = List<String>.generate(6, (i) => 'Gojo $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Messenger",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_horizontalItems.isNotEmpty) {
              _horizontalItems.removeLast();
            }
          });
        },
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
              child: TextFieldWidget(),
            ),
            Container(
              height: 115.0,
              child: ListViewWidget(horizontalItems: _horizontalItems),
            ),
            Expanded(
              child: ListView(
                children: [
                  for (var i = 0; i < 9; i++)
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(Image_insert.gojo),
                              radius: 35,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Gojo Satoru"),
                              Text("Ryoiki tenkai: MURYOKUSHO"),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 15),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.purple, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.purple, width: 2.0),
          borderRadius: BorderRadius.circular(4.0),
        ),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  final List<String> horizontalItems;

  const ListViewWidget({
    super.key,
    required this.horizontalItems,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: horizontalItems.map((item) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          width: 80,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(Image_insert.gojo),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(3.0),
                child: Text(item),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
