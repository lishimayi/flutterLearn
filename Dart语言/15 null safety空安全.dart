// 15 null safety空安全.dart
/**
 * flutter 2.2.0(2021-5-19)发布
 * ? 可空命令 swift中的可选类型
 * ！断言类型
 */

void main(List<String> args) {
  String? e = "asd"; // ? 代表 e 可空
  e = null;
  print(e);
  getLength("str");
}

getLength(String? str) {// 可空命令的使用长江
  try {
    print(str!.length);// 类型断言
  } catch (e) {
    print("error");
  }
}
