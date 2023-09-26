// Person.dart
class Person {
  String name;
  int age;
  //默认构造函数
  Person(this.name, this.age);
  setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void printInfo() {
    print("name is ${this.name}, and age is ${this.age}");
  }
}
