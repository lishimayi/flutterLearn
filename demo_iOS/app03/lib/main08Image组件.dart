// ignore_for_file: file_names, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("lei hou"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          // MyApp(),
          // MyButton(),
          // MyText(),
          MyImage(),
          SizedBox(
            height: 20,
          ),
          MyClipOverImage(),
          LocalImage(),
        ],
      ), // const MyApp(),
    ),
  ));
}

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Image.asset(
        "images/123.jpg",
        fit: BoxFit.cover,
      ),
      decoration: const BoxDecoration(color: Colors.yellow),
    );
  }
}

// clipOver 实现圆形图片
class MyClipOverImage extends StatelessWidget {
  const MyClipOverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://t7.baidu.com/it/u=4162611394,4275913936&fm=193",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

// BoxDecoration 实现圆角
class MyBoxDecorationImage extends StatelessWidget {
  const MyBoxDecorationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(75),
        image: const DecorationImage(
          // image: ImageProvider,
          image: NetworkImage(
              "https://t7.baidu.com/it/u=4162611394,4275913936&fm=193"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// 图片
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.yellow,
      ),
      child: Image.network(
        "https://t7.baidu.com/it/u=4162611394,4275913936&fm=193",
        // fit: BoxFit.cover,// 剪裁，充满，不变形
        // fit: BoxFit.contain,// default
        // fit: BoxFit.fitHeight,//宽度 充满
        // fit: BoxFit.fitHeight,// 高度充满
        // fit: BoxFit.fill,// 填满
        // repeat: ImageRepeat.repeatX,// x 平铺
        // repeat: ImageRepeat.repeatY,// Y 平铺
        // repeat: ImageRepeat.repeat,//X Y 平铺
        width: 100, // 结合 ClipOver 才有效果
        height: 100,
        // scale: 2, // 2缩小-倍
        // alignment: Alignment.centerLeft,// 居左
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      // color: Colors.black,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: const Text(
        "我是一个texasdasdasddddddddddddddddt",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline, // 下划线
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dotted,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          // transform: Matrix4.translationValues(10, 30, -10),// 位移
          // transform: Matrix4.rotationZ(0.2),// 旋转
          transform: Matrix4.skewY(0.5), // 倾斜
          decoration: BoxDecoration(
            // 装饰
            color: Colors.red,
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 12)],
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
          ),
          child: const Text(
            "hi flutter",
            style: TextStyle(color: Colors.white, fontSize: 12),
          )),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      alignment: Alignment.center,
      // margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "button",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My App'),
//         ),
//         body: const Center(
//           child: Text('Hello, World!'),
//         ),
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home '),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
