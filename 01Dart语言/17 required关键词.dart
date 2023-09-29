// 17 required关键词.dart
/**
 * 作为内置修饰符
 * 主要用于允许根据需要标记任何命名参数（函数或类）。使得他们不为空，因为可选参数中必须有一个require。
 */

String printUserInfo(String name,{int? age,required String sex}) {// 后面大括号里面是命名参数 
print("$age --- $sex");
  return "";
}

void main(List<String> args) {
  printUserInfo("zs",age:10, sex: "sex");

  var p = Person(age: 10);
  print(p);
}

// 命名参数
class Person {
  String? name;// 可空
  int age;// 必选
  Person({this.name,required this.age});
}