import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_buoi_13/image_class.dart';

class Demo_Grid_View extends StatefulWidget {
  const Demo_Grid_View({super.key});

  @override
  State<Demo_Grid_View> createState() => _Demo_Grid_ViewState();
}

class _Demo_Grid_ViewState extends State<Demo_Grid_View> {
  late List<GameModel> gameModel = [];
  late List<GameModel> gameModeNow = [];

  @override
  void initState() {
    gameModel = [
      GameModel("frog", Image_insert.frog1, 1),
      GameModel("dog", Image_insert.dog1, 2),
      GameModel("frog", Image_insert.frog2, 3),
      GameModel("cat", Image_insert.cat1, 4),
      GameModel("dog", Image_insert.dog2, 5),
      GameModel("cat", Image_insert.cat2, 6),
    ];

    super.initState();
  }

  @override
  void dispose() {
    gameModel.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cards",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    gameModel[index].isOpen = !gameModel[index].isOpen;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: gameModel[index].isOpen
                        ? DecorationImage(
                            image: ExactAssetImage(gameModel[index].picture),
                            fit: BoxFit.fill)
                        : null,
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Text(
                      gameModel[index].isOpen ? "" : "?",
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
          Visibility(

            visible: true,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Demo_Grid_View();
                }));
              },
              child: Text(
                "Reset",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GameModel {
  bool isOpen;
  String value;
  String picture;
  int isfull;

  GameModel(this.value, this.picture, this.isfull, {this.isOpen = false});
}

