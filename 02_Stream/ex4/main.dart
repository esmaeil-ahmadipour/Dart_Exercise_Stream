import 'dart:async';

void main() {
var s = getNumber(5);
s.listen((onData){
  print("Data : $onData");
});
}

Stream<int> getNumber(int i) async*{
  for (var j = 0; j < i; j++) {
    yield j;
    
  }
}