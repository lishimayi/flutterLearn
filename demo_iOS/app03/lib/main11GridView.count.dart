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
    return GridView.count(
      crossAxisCount: 3,// count of items in per line
      crossAxisSpacing: 2,// horizental space
      mainAxisSpacing: 2,// vertical space
      childAspectRatio: 1,// sub element with:height
      children: const [
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
        Icon(Icons.baby_changing_station),
      ],
    );
  }
}
