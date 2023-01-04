import 'package:flutter/material.dart';
import './components/window_header.dart';
import './play_bar.dart';
import './play_list.dart';
import 'package:window_manager/window_manager.dart';

import 'main_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Home> createState() => _MusicState();
}

class _MusicState extends State<Home> with WindowListener {
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
            height: 56.0,
            buttonSize: 24,
            backgroundColor: Colors.red,
            color: Colors.white,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Icon(
                    Icons.flutter_dash,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // const Divider(height: 2.0, thickness: 2.0, color: Colors.red),
          Expanded(
            child: Row(
              children: const [PlayList(), Expanded(child: MainBox())],
            ),
          ),
          const PlayBar(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
