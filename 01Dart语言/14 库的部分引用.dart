// 14 库的部分引用.dart
/**
 * 当我们指向运用一个库的 不分功能的时候
 * show 使用部分
 * hide 隐藏部分
 */

import '../libs/Person.dart' show Person;

void main(List<String> args) {
  var p = new Person("an", 2);
  p.name = "1";
  p.printInfo();
  p.setInfo("12",2);
  print(p);
}