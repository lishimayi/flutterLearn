// ignore_for_file: unused_import, unnecessary_type_check

import 'dart:ffi';

/**
 * 1. 静态成员
 *    1. 静态方法不能访问非静态成员，非静态方法可以访问静态成员。
 * 2. 操作符
 *    1. ? 条件运算符（了解即可）类似swift中的可选型
 *    2. as 类型转换
 *    3. is 类型判断
 *    4. .. 级联操作   （连缀）
 * 3. 类的集成
*/
class Person {
  static String name = "zhang san"; // Person.name;
  String nickName = "san san";
  static void call() {
    // Person.call; 类似类方法
    print("call");
    print(name);
    // print(this.nickName);// error
    // this.call();// error;
  }

  void getSome() {
    print(name); // 访问静态属性
    print(this.nickName); // 访问非静态属性
    call(); // 调用静态方法
  }
}

void main(List<String> args) {
  // ap?.getSome();
  // var b = "";
  var b = new Person();
  bool a = b is Person;

  print(a);

  b
    ..nickName = ''
    ..getSome();
}
