import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:mywin/components/window_header.dart';
import 'package:mywin/play_bar.dart';
import 'package:mywin/play_list.dart';

import 'main_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with WindowListener {
  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          WindowHeader(
              height: 48.0,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Icon(
                      Icons.flutter_dash,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Window应用程序 - 主页',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          const Divider(
            height: 1.0,
          ),
          Expanded(
            child: Wrap(),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
