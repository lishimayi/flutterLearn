// ignore_for_file: prefer_const_constructors

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
  const MyAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: ((context, index) {
        return ListTile(
          leading: Image.network(listData[index]["imgUrl"]),
          title: Text(listData[index]["title"]),
          subtitle: Text(listData[index]["author"]),
        );
      }),
    );
  }
}
