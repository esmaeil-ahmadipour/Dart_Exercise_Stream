import 'human.dart';
import 'is_live_intrface.dart';


class Father extends Human implements IsLive{
  String _firstName="James";
  String lastName="Bond";
  String _nationalCardId="123456789";
  String eyeColor="Green";

  void driving() {
    print("Driving Very Slow !");
  }

  @override
  void speak() {
    print("Speaking British.");
  }


  String get firstName => _firstName;
  @override
  bool live=false;

  String get nationalCardId => _nationalCardId;
}





