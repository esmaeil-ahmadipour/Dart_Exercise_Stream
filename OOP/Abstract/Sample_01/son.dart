import 'father.dart';

class Son extends Father {
  String _firstName="Joe";
  String _nationalCardId="987654321";


  String get firstName => _firstName;

  @override
  void driving() {
    print("Driving Very Fast !");
  }

  @override
  void speak() {
    print("Speaking Farsi.");
  }

  String get nationalCardId => _nationalCardId;
}
