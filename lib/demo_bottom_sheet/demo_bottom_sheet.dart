import 'package:flutter/material.dart';
import 'package:project_buoi_13/image_class.dart';

class Demo_bottom_sheet extends StatefulWidget {


  final int count;


  @override
  State<Demo_bottom_sheet> createState() => _Demo_bottom_sheetState();

  Demo_bottom_sheet({required this.count});

}

class _Demo_bottom_sheetState extends State<Demo_bottom_sheet> {
  @override
  Widget build(BuildContext context) {
    late int count = 0;

    // Function({required int count,})

    int addCount(){
      return count + 1;
    };

    int minusCount(){
      return count - 1;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo bottom sheet"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(Image_insert.gojo),
                      radius: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                  });
                                  minusCount();
                                },
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(25)),
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              Text("$count"),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                  });
                                  addCount();
                                },
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(25)),
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Center(
                            child: Text("Accept"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
        child:  Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blueAccent,
          ),
          child: Icon(Icons.add),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("We have $count Gojo products"),

          ],
        ),
      ),
    );
  }
}


