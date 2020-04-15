import 'father.dart';
import 'son.dart';

void main() {
  Father f = new Father();
  Son s = new Son();

  s.eyeColor = "blue";
  s.live = true;


  print("-------Parent Information----------");
  printer("Father is Live ?", f.live.toString());
  printer("Father eyeColor ?", f.eyeColor);
  f.speak();

  f.driving();


  print("\n-------Default Bahaviors----------");
  s.walking();
  printer("i am Living In World", s.livingInWorld.toString());

  print("\n-------Personal Bahaviors----------");
  s.driving();
  s.speak();

  print("\n-------Public Information----------");
  printer("my lastName", s.lastName);
  printer("my eyeColoe", s.eyeColor);
  printer("i am islive", s.live.toString());

  print("\n-------Private Information----------");
  printer("my FirstName", s.firstName);
  printer("my NationalCardId", s.nationalCardId);
  printer("Father Name ?", f.firstName);
  printer("Father NationalCardId ?", f.nationalCardId);
}

void printer(String description, String item) {
  print("$description : $item");
}
