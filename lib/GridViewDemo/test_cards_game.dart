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
  late List<GameModel> gameModeNow = List.from(gameModel);
  late int count = 0;
  late int score = 0;
  GameModel? lastOpenedCard;

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
    gameModeNow = List.from(gameModel);
    super.initState();
  }

  @override
  void dispose() {
    gameModel.clear();
    super.dispose();
  }

  bool allCardsFlipped() {
    return gameModeNow.every((card) => card.isOpen);
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
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: gameModeNow.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    gameModeNow[index].isOpen = !gameModeNow[index].isOpen;
                    if (lastOpenedCard != null) {
                      if (lastOpenedCard!.value == gameModeNow[index].value &&
                          lastOpenedCard != gameModeNow[index]) {
                        score += 1;
                      } else {
                        gameModeNow[index].isOpen = false;
                        lastOpenedCard!.isOpen = false;
                      }
                      lastOpenedCard = null;
                    } else {
                      lastOpenedCard = gameModeNow[index];
                    }
                  },);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Score: $score",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Visibility(
                visible: allCardsFlipped(),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Demo_Grid_View();
                      },),);
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                ),
              ),

            ],
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
