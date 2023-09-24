// 10 dart中的类04.dart
/**
 * Dart中的多态:
 * 允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果。
 * 子类的实例赋值给父类的引用。
 * 多态就是父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不同的表现。
 */

/**
 * 和JAVA一样dart也有接口，但是和JAVA还是有区别的。
 * 首先dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口被实现。
 * 同样使用implements关键字实现。
 * 但是dt的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象类中的属性的方法全部需要复写一遍。
 * 而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现JAVA接口那样的方式，一般会使用抽象类。
 * 建议使用抽象类定义接口。
 */

//  接口的定义以及实现
abstract class Db {
  late String url;
  add();
  save();
  delete();
}

class Mysql implements Db {
  @override
  String url;

  Mysql(this.url);

  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }

}