import 'package:flutter/material.dart';
import 'package:mywin/components/window_header.dart';
import 'package:mywin/play_bar.dart';
import 'package:mywin/play_list.dart';
import 'package:window_manager/window_manager.dart';

import 'main_box.dart';

class Music extends StatefulWidget {
  const Music({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> with WindowListener {
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
            height: 64.0,
            buttonSize: 32,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Icon(
                    Icons.flutter_dash,
                    color: Colors.red,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(height: 2.0, thickness: 2.0, color: Colors.red),
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
