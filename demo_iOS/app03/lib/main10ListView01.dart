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
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
          ListTile(title: Text("title text")),
          Divider(),
        ],
      ),
    ),
  ));
}
