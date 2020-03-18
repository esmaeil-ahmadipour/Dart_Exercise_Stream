import 'dart:async';

var list = [2, "John", false, 5.5, -7, "Maggie", true];
StreamSubscription streamSubscription;

void main() {
  eventHandler("Hello Flutter!");
  Stream stream = Stream.fromIterable(list);
  streamSubscription=stream.listen(
      eventHandler,
      onDone: () {
        print('Iam Doing !');
      },
      onError: (err){
        print("Opps! Has an Error.$err");
      },
      cancelOnError: true
  );
}

eventHandler(eventValue) {
  print("Event Value Is: ${eventValue}");
}
