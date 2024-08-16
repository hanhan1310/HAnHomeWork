import 'dart:async';

class Lab2VM {
  static void returnNewValue (StreamController streamController){
    streamController.addStream(Stream.periodic(Duration(seconds: 3), (i){
      return "done";
    }));
  }

}