import 'dart:async';

var list = [2, "John", false, 5.5, -7, "Maggie", true];
StreamSubscription streamSubscription;

void main() {
  eventHandler("Hello Flutter!");
  Duration period = Duration(seconds: 2);
  Stream stream = Stream.periodic(period,computation);
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

computation(int i) {
  if (i < list.length) {
    return list[i];
  }
  streamSubscription.cancel();
}

eventHandler(eventValue) {
  print("Event Value Is: ${eventValue}");
}
