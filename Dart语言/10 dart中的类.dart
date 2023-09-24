// 10 dart中的类.dart

class Person {
  String name;
  String _privateVar;// 私有属性
  int age;
  // 默认构造函数
  Person(this.name,this.age,this._privateVar);
  // 命名构造函数
  Person.xiaoMing()
    : age = 0,
    _privateVar="",
    name = ""{
      
    }
  void getInfo(){
    print("asd");
    print(this._privateVar);
    this._pricateFunc();
  }

  void _pricateFunc() {// 私有方法
    print("object");
  }

  get getProperty {// 以属性的方式调用
    return "";
  }
  set setProperty(value) {// 以属性的方式调用
    this.name = value;
  }
}

class Dog {
   
}
void main(List<String> args) {
//  数组类
 List list = new List.empty();
 list.add(""); 
// person

Person ap = new Person();
print(ap.name);

}