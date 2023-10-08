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
        children: const [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("title text"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
          Divider(),
        ],
      ),
    ),
  ));
}
