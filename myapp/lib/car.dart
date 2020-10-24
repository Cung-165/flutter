import 'package:flutter/cupertino.dart';

class Car{
  String name;
  int yearofProduction;
  /*
  Car(String name,int yearofProduction){
      this.name=name;
      this.yearofProduction=yearofProduction;
  }*/
  //Car(this.name,this.yearofProduction);
  Car({
    @required this.name,
    this.yearofProduction=2020
  });
  @override
  String toString(){
    return '${this.name}-${this.yearofProduction}';
  }
  void _doSomething(){
    print("ABC>>>");
    this.handlEvent();
  }
  void showname({String name}){
    print(name);
    _doSomething();
  }
  Function handlEvent;
}