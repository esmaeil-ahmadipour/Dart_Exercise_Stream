import 'dart:async';

void main() {


  // In MicroTask-Queue
  Future.microtask(() {
    print("Run Microtask 1  .. ${DateTime.now()} \n");
  });


  // In Event-Queue
  doTask1();
  // In Event-Queue
  doTask2();


  // In Event-Queue
  task1().then((onValue) {
    print("Task 1 Was Completed .. ${DateTime.now()} \n");
  });

  // In Event-Queue
  task2().then((onValue) {
    print("Task 2 Was Completed .. ${DateTime.now()} \n");
  });


  // In MicroTask-Queue
  Future.microtask(() {
    print("Run Microtask 2 .. ${DateTime.now()} \n");
  });

  reward();
  print("End Of main() ${DateTime.now()} \n");
}

void doTask1() async{
  var onValue = await task1();
  print("Run doTask1 : $onValue");
}

void doTask2() async{
  var onValue = await task2();
  print("Run doTask2 : $onValue");
}

Future<String> task1() {
  var f = Future((){
    print("Doing Task 1 ..");
    for (var i = 0; i < 3 * 1e9; ++i) {}
    return '${DateTime.now()} \n';
  });

return f;
}

Future<String> task2() {
  var f =Future((){
    print("Doing Task 2 ..");
    for (var i = 0; i < 3 * 1e9; ++i) {}
    return("${DateTime.now()} \n");
  });
  return f;
}

void reward() {
  print("Enjoying Reward ! .. ${DateTime.now()} \n");
}
