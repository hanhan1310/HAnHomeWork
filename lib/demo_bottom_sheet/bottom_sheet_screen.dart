import 'package:flutter/material.dart';

import '../image_class.dart';

class BottomSheetBaseScreen extends StatefulWidget {
  const BottomSheetBaseScreen({super.key});

  @override
  State<BottomSheetBaseScreen> createState() => _BottomSheetBaseScreenState();
}

class _BottomSheetBaseScreenState extends State<BottomSheetBaseScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: () {showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          int bottomSheetCount =0;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(Image_insert.gojo),
                    radius: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(
                                      () {
                                    bottomSheetCount--;
                                  },
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                            ),
                            Text("$bottomSheetCount"),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  bottomSheetCount++;
                                },);
                              },
                              child: Container(
                                height: 50,
                                width: 50,
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
            ],
          );
        },
      );}, child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blueAccent,
        ),
        child: const Icon(Icons.add),
      ),),
    );
  }
}
