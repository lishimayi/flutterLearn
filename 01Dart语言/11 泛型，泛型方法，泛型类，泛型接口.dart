// 11 泛型，泛型方法，泛型类，泛型接口.dar
/**
 * 
 */

String getData1(String value) {
  return value;
}
int getData2(int value) {
  return value;
}

// 传入什么类型返回什么类型，上述两种方法比较单一

// 泛型

T getData3<T>(T value) {
  return value;
}

// 泛型类

class MyList<T> {
  List list = <T>[];
  add(T value) {
    this.list.add(value);
  }
  List getList() {
    return this.list;
  }
}

// 泛型接口
abstract class objectCahe {
  getByKey(String key);
  void setBykey(String key, Object value);
}
abstract class StringCahe {
  getByKey(String key);
  void setBykey(String key, String value);
}
abstract class Cahe<T> {
  getByKey(String key);
  void setBykey(String key, T value);
}

class FileCache<T> implements Cahe<T> {// 使用泛型接口
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setBykey(String key, value) {
    // TODO: implement setBykey
  }
}







void main(List<String> args) {
  getData3<String>("asd");
}

