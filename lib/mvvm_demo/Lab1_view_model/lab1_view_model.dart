import 'dart:async';

class Lab1VM {
  static void checking (StreamController streamController){
    streamController.addStream(Stream.periodic(Duration(seconds: 1), (i){
      if(i > 11){
        return 12;
      } else {
        return i + 1;
      }
    }));
  } 

}