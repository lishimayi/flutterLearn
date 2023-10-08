// 10 dart中的类05.dart
// ignore_for_file: unused_import

import 'dart:html';

/**
 * 一个类实现多个接口，
 * dart 的中的minxins
 */

abstract class A {
  late String name;
  printA();
}
abstract class B {
  printB();
}
class C implements A,B {// this is point
  @override
  printA() {

    throw UnimplementedError();
  }
  
  @override
  late String name;
  
  @override
  printB() {

    throw UnimplementedError();
  }

}

void main(List<String> args) {
  
} 

/**
 * mixins 就是混入。一个类混入其他功能
 * 为了实现类似于多继承的一种功能。
 */

class  BB {
  void printBB() {
    print("bb");
  }
}
class  CC {
  void printCC() {
    print("CC");
  }
}

class DD with BB,CC {

}

class EE extends DD {// EE 继承 DD

}

void main2(List<String> args) {
  DD dd = new DD();
  dd.printBB();
  dd.printCC();
}
