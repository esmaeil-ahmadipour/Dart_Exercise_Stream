void main() {
  // In MicroTask-Queue
  Future.microtask(() {
    print("Run Microtask 1  .. ${DateTime.now()} \n");
  });

  // In Event-Queue
  var f1 = Future(task1);
  f1.then((onValue) {
    print("First Note =>  Task 1 Was Completed .. ${DateTime.now()} \n");
  }).then((onValue) {
    print(
        "Second Note =>  Task 1  Was Completed .. ${DateTime.now()} \n");
  });

  // In Event-Queue
  Future(task2);

  // In MicroTask-Queue
  Future.microtask(() {
    print("Run Microtask 2 .. ${DateTime.now()} \n");
  });

  reward();
  print("End Of main() ${DateTime.now()} \n");
}

void task1() {
  print("Doing Task 1 ..");
  for (var i = 0; i < 3 * 1e9; ++i) {}
  print("${DateTime.now()} \n");
}

void task2() {
  print("Doing Task 2 ..");
  for (var i = 0; i < 3 * 1e9; ++i) {}
  print("${DateTime.now()} \n");
}

void reward() {
  print("Enjoying Reward ! .. ${DateTime.now()} \n");
}
