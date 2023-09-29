// 13 dart库重命名和冲突的解决.dart
/**
 * 
 */


import '../libs/Person.dart';
import '../libs/Person2.dart' as lib;// 库的重命名 ，并解决了冲突

void main(List<String> args) {
  var p = Person("a", 2);
  var p2 = lib.Person("1",2);
  print(p);
  print(p2);
}