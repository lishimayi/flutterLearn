## 变量

### 前言：

* dart是一个强大的脚本类语言，可以不预先定义交量类型，自动会类型推导
*  dart 中定义变量可以通过var关键字可以通过类型来声明变量
如：
```
var str='this is var'// 使用 var
```
*  具体数据类型中声明变量
如：
```
String str='this is var';// 使用具体的数据类型
int str=123；
```
*  final、const 声明 产量
如：
```
const PI = 3.14159;
final str='this is var';// 使用具体的数据类型
final a = new DateTime.now();
```
* final的作用是，可以开始的时候不赋值；只能赋值一次
* final 是运行时常量，并且它是惰性初始化，即第一次使用的时候才进行初始化。