import 'package:flutter/material.dart';
import 'package:project_buoi_13/image_class.dart';

class List_view extends StatefulWidget {
  const List_view({super.key});

  @override
  State<List_view> createState() => _List_viewState();
}

class _List_viewState extends State<List_view> {

  List<String> _dataBase = List<String>.generate(6, (i) => 'Gojo $i');

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
      floatingActionButton: TextButton(
        onPressed: () {
          if (_dataBase.isNotEmpty){
            _dataBase.removeLast();
          }
          setState(() {
          });
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
          child: const Icon(Icons.delete, color: Colors.white,),

        ),
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
              child: ListViewWidget(data: _dataBase),
            ),
            Expanded(
              child: ListView(
                children: [
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
  final List<String> data;

  const ListViewWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: data.map((item) {
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
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Image_insert.gojo),
                    radius: 35,
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
