void main() {
  task1();
  Future(task2);
  reward();
}

void task1() {
  print(DateTime.now());
  print("Doing Task 1\n");
  for (var i = 0; i < 3 * 1e9; ++i) {}
}

void task2() {
  print(DateTime.now());
  print("Doing Task 2\n");
  for (var i = 0; i < 3 * 1e9; ++i) {}
}

void reward() {
  print(DateTime.now());
  print("Enjoying Reward !\n");
}
