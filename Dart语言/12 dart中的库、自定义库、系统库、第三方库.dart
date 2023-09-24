// 12 dart中的库、自定义库、系统库、第三方库.dart
/**
 * library指令可以创建一个库，
 * 每一个单独的dart文件都是一个库，即使没有使用library指令来指定。
 * dart中的库主要有三种：
 *  1、自定义库
 *      import 'lib/xxx.dart'
 *  2、系统内置库
 *      import 'dart:math';
 *      import 'dart:io';
 *      import 'dart:convert';
 *  3、Pub包管理系统中的库
 *      https://pub.dev/packages
 *      https://pub.flutter-io/packages
 *      https://pub.dartlang.org/flutter/
 *      
 *      1、需要在项目根目录新建一个pubspec.yaml
 *      2、在pubspec.yaml文件配置名称、描述、依赖等信息
 *      3、运行pub get 将包下载到本地
 *      4、项目中引用库 import 'package:http/http.dart' as http 
 *  
 */

import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  var result = await _getData();
  print(result);
}

_getData() async {
  var httpClient = HttpClient();
  var uri = Uri.http('news-at.zhihu.com','/api/3/stories/latest');
  var request = await httpClient.getUrl(uri);
  var response = request.close();
  return await response.transform(utf8.decoder).join();
}