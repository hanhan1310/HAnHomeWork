import 'package:project_buoi_13/btvn_humans/class_humans.dart';
import 'package:project_buoi_13/image_class.dart';

class Manager extends Humans {
  static List<Humans> human = [
    Humans(1, "Hoang", 20, Image_insert.gojo),
    Humans(2, "hoang an", 21, Image_insert.cat1),
    Humans(3, "han", 22, Image_insert.cat2),
    Humans(4, "an", 21, Image_insert.dog2),
    Humans(5, "vhn", 20, Image_insert.dog1),
  ];
  Manager(super.id, super.name, super.age, super.image);

  static List<Humans> searching(List<Humans> human, String forSearching ) {
    List<Humans> saveList = [];
    for (int i = 0; i < human.length; i++) {
      if (human[i].name.contains(forSearching)) {
        saveList.add(human[i]);
      }
    }
    return saveList;
  }

  static List<Humans> sortList(List<Humans> human) {
    human.sort((b, a) => a.age.compareTo(b.age));
    return human;
  }
}
