// 10 dart中的类03.dart
/**
 * 抽象类多态和接口。
 * dart 抽象类主要用于定义标准子类，可以继承抽象类，也可以实现抽象类接口。
 * 1. 抽象类通过abstract关键字来定义。
 * 2. Dart中的抽象方法不能用abstract声明。Dart中没有方法体的方法，我们称之为抽象方法。
 * 3. 如果子类继承抽象类，必须得实现里面的抽象方法。
 * 4. 如果把抽象类当做接口实现的话，必须得实现抽象类里面定义的所有属性和方法
 * 5. 抽象类不能被实例化，只有继承他的子类可以。
 * 
 * Extends抽象类和implements区别:
 * 1. 如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话，我们就用extends继承抽象类。
 * 2. 如果只是把抽象类当做标准的话，我们就用implements实现抽象类。
 */

abstract  class  Animal {// Animal类是一个抽象类，无法被直接实例化。
  eat();// 抽象方法
  normal(){
    print("我是抽象类里面的一个普通方法。");
  }
}

class Dog  extends  Animal {
  @override
  eat() {
    // TODO: implement eat
    
  }
}

void main(List<String> args) {
  Dog dog = new Dog();
  dog.eat();
}