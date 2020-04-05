import 'car.dart';
import 'sample_car.dart';

/*
* Using Car Class(car.dart) For Creating Sample Object(sample_car.dart).
* Using Mixin Class(extra_property.dart) to Adding Property To Sample Object .
*/

void main() {
  Sportage oneSportage = new Sportage();
  testDriving(oneSportage, -8);
  // * This Output Use Mixin Class And Not Have Dependency To Car Class.
  print("Cost Of Stock Car :: ${oneSportage.stockCost(oneSportage.cost)}");
}

// * Build Output Of Object
void testDriving(Car car, int speed) {
  print("oneSportage.cost : ${car.cost}");
  print("oneSportage.bodyType : ${car.bodyType}");
  print("oneSportage.doors : ${car.doors}");
  print("oneSportage.enginePower : ${car.enginePower}");
  car.brakingCar();
  car.moving(speed);
}
