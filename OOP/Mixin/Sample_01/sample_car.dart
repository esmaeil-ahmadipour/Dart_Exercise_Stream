// * Car Sample Object + Extra Property

import 'car.dart';
import 'extra_property.dart';

class Sportage extends Car  with StockCar {
  int maxSpeed = 250;

  @override
  void moving(int speed) {
    if (speed == 0) {
      print("Speed Is $speed ,  Not Moved !");
    } else if (speed < 0) {
      print("Reverse Go with (Speed : ${speed * (-1)}) !");
    } else if (speed > maxSpeed) {
      print("Speed Is $speed ,  Bad Driving ..");
    } else if (speed < maxSpeed) {
      print("Speed Is $speed ,  Good Driving ..");
    }
  }

  @override
  String bodyType = "SUV";
  @override
  int enginePower = 270;
  @override
  int doors = 4;

  @override
  void brakingCar() {
    print("Speed Is Zero ,  Break !");
  }

  @override
  int cost = 50000;

  @override
  double stockCost(int cost) {
    return cost - ((cost * 30) / 100);
  }
}
