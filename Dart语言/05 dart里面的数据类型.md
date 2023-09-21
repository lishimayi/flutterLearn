# 05 dart 里面的数据类型.md

### 常用数据类型：

* int
* double
* String
* bool
* 数组
* 字典

## 定义一些变量

### 字符串
```
String str = "it is a string";
String str1 = """it 
is 
a 
string""";
String str2 = 'it is a string';
String str22 = '''it is
 a string''';
```
### 值类型：

```
int a = 10;
double b = 9.2;
```
### bool类型：

```
bool flag = true;
bool isred = false;
```
### 数组类型：

```
// 第一种定义方式,[]定义的数组，长度可变
var array = ["a",true,12];
// 添加类型指定
var arr2 = <String>["张三","立式"];
// 创建一个固定长度的集合
var length = 2;
var fill = "";
var arr3 = List.filled(length,fill);// 创建一个固定长度的集合

```

### 字典类型：

```
/// var
 var dic = {
    "name":"脏三",
    "age":18
 }

// 取值
dic["name"];

// new Map();
var dic2 = new Map();
dic2["name"] = "张三";
dic2["age"] = 12;
```




### if 语句

```
if (str == str1) {
    print("1");
} else {
    print("2");
}

if (str is String)
```
### 打印拼接字符串

```
print("$str2 $str22");
// 或者

print(str2+ str22);
```