// ignore_for_file: file_names

import 'package:flutter/material.dart';
import './font.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow, // 基本样式，影响导航色
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("lei hou"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          // MyHomePage(),
          Icon(
            Icons.home,
            size: 40,
            color: Colors.red,
          ),
          Icon(
            MyIcon.weixiu,
            size: 40,
            color: Colors.red,
          )
        ],
      ), // const MyApp(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("你好 flutter ");
  }
}
