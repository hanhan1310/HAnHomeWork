import 'package:flutter/material.dart';
import 'package:project_buoi_13/image_class.dart';

class Demo_Grid_View extends StatefulWidget {
  const Demo_Grid_View({super.key});

  @override
  State<Demo_Grid_View> createState() => _Demo_Grid_ViewState();
}

class _Demo_Grid_ViewState extends State<Demo_Grid_View> {
  late List<GameModel> gameModel = [];
  late List<GameModel> gameModeNow = List.from(gameModel);
  late int count = 0;
  late int score = 0;

  @override
  void initState() {
    gameModel = [
      GameModel("frog", Image_insert.frog1),
      GameModel("dog", Image_insert.dog1),
      GameModel("frog", Image_insert.frog2),
      GameModel("cat", Image_insert.cat1),
      GameModel("dog", Image_insert.dog2),
      GameModel("cat", Image_insert.cat2),
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
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              gameModel.remove(index);
              return InkWell(
                onTap: () {
                  setState(
                    () {
                      gameModeNow[index].isOpen = !gameModeNow[index].isOpen;
                      count++;
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: gameModeNow[index].isOpen
                        ? DecorationImage(
                            image: ExactAssetImage(gameModeNow[index].picture),
                            fit: BoxFit.fill)
                        : null,
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Text(
                      gameModeNow[index].isOpen ? "" : "?",
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
            visible: (count == gameModel.length) ? true : false,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Demo_Grid_View();
                    },
                  ),
                );
              },
              child: const Text(
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

  GameModel(this.value, this.picture, {this.isOpen = false});
}
