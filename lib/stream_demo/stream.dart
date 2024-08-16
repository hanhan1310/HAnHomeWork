import 'dart:async';

void main(){
  Stream stream = Stream.value("3").asBroadcastStream();
  stream.listen((event) {
    print("hi 1");
  });
  stream.listen((event) {
    print("hi 2");
  });
  
  StreamController streamController = StreamController();
  StreamSubscription streamSubscription = streamController.stream.listen((event) {
    print("stream onListen: $event");
  });

  streamController.sink.add("event");
  streamController.sink.add("event1");
  streamController.add(1111);
  streamController.add(2222);

}