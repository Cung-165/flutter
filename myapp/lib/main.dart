import 'package:flutter/material.dart';
import 'calculation.dart';
import 'car.dart';
void main(){
  /*
  for(int i=0;i<numbers.length;i++){
      print(numbers[i]);
  }
  */

/*  numbers.forEach((element) {
    print(element);
  });
  print("--------------");
  stringNum.forEach((element) {
    print(element);
  });

 */
  //Hướng đối tượng
  /*
  var myCar=Car(name:"Lamboghini",yearofProduction: 2020);
  myCar.handlEvent=(){
    print("handle");
  };
  //myCar._doSomething();//private function class
  myCar.showname(name:myCar.name);
  */
  //List
  List<Car> cars=<Car>[];
  cars.add(Car(name: "BMW",yearofProduction: 2020));
  cars.add(Car(name: "Audi",yearofProduction: 2019));
  cars.add(Car(name: "Mercedes",yearofProduction: 2021));
  //Sort by number
  cars.sort((c1,c2)=>c1.yearofProduction-c2.yearofProduction);
  //sort by alphabet
  cars.sort((c1,c2)=>c2.name.compareTo(c1.name));
  //How to update:
  cars[0].yearofProduction=2000;
  //lọc
  var filter_car=cars.where((element) => element.yearofProduction==2020).toString();
  //delete an item by filter
  cars=cars.where((element) => element.yearofProduction>2015).toList();
  //Get names using map
  List<String> name_cars=cars.map((e) => e.name).toList();
  cars.forEach((element) {
      print(element);
  });
  runApp(
    Center(child: Text(name_cars.toString(),
        style: TextStyle(fontSize: 20),
        textDirection: TextDirection.ltr
    )),

  );
}

