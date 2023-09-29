// 18 dart 性能优化之常量、常量构造函数详解.dart

/**
 * 前文回顾：
 * dart 常量： final 和 Const
 * Const 声明的产量是在编译时确定的，永远不会改变。
 * final声明的常量允许声明后再复制，复制后不可改变，final声明的变量是在运行时确定的。
 * final不仅有const的编译时常量的特性，最重要的是他是运行时常量，并且final是惰性初始化。
 */

void main(List<String> args) {
  // var pi = 3.14;
  // var p= 3.14;
  // print(identical(pi, p));// true

  // var pi = [3.14];
  // var p= [3.14];
  // print(identical(pi, p));// false

  // var pi = [3.14];
  // var p= [3.14];
  // print(identical(pi, p));// false

  // const pi = [3.14];
  // const p = [3.14];
  // print(identical(pi, p)); // true
  // var C1 = Container(name: "name", age: 1);
  // var C2 = Container(name: "name", age: 1);
  // print(identical(C1, C2));
  
  var C2 = Container("name",1);
  print(C2);
}

class Container {
  // 常量构造函数的修改
  final String name;
  final int age;
  // const Container({required this.name, required this.age});
  const Container(this.name,this.age);
}
