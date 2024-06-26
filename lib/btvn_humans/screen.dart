import 'package:flutter/material.dart';
import 'package:project_buoi_13/btvn_humans/class_humans.dart';
import 'package:project_buoi_13/btvn_humans/class_manager.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  late List<Humans> humans = [];
  late List<Humans> saveList = [];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void initState() {
    // TODO: implement initState
    saveList = Manager.human;
    humans = Manager.human;
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    humans.clear();
    saveList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Manage Humans"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        floatingActionButton: TextButton(
          onPressed: () {
            setState(() {
              Manager.sortList(humans);
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
            child: const Icon(Icons.filter_list_alt, color: Colors.white,),
          ),

        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  iconColor: Colors.grey,
                  hintText: "Searching...",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
                onTapOutside: ((even) {
                  FocusScope.of(context).unfocus();
                }),
                onChanged: (value) {
                  setState(() {
                  if(value.isEmpty){
                    saveList = Manager.human;
                  }else{
                    saveList = Manager.searching(Manager.human, value);
                  }

                    humans = List<Humans>.from(saveList);
                  },);

                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: humans.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: double.maxFinite,
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(humans[index].image),
                          radius: 40,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(humans[index].name),
                              Text(humans[index].age.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
