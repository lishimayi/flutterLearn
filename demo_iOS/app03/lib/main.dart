import 'package:flutter/material.dart';
import 'res/listdata.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow, // 基本样式，影响导航色
    ),
    home: Scaffold(
      appBar: AppBar(title: const Text("lei hou")),
      body: MyAppHomePage(),
    ),
  ));
}

class MyAppHomePage extends StatelessWidget {
  MyAppHomePage({super.key}) {
    // ignore: avoid_print
    print(listData);
  }
  List<Widget> _initData() {
    List<Widget> wListData = [];

    for (int i = 0; i < listData.length; i++) {
      wListData.add(ListTile(
        leading: Image.network("${listData[i]["imgUrl"]}"),
        title: Text("${listData[i]["title"]}"),
        subtitle: Text("${listData[i]["author"]}"),
      ));
    }
    return wListData;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal, // 滑动方向
      padding: const EdgeInsets.all(10),
      children: _initData(),
    );
  }
}
