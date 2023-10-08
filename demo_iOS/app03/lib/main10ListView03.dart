// ignore_for_file: file_names, unused_import

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
      body: ListView(
        scrollDirection: Axis.horizontal, // 滑动方向
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            height: 30,
            // width: 200,//宽度无效
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
            child: const Text(
              "me is a title",
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.lightGreen,
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
