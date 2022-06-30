import 'package:flutter/material.dart';
// import 'package:mywin/components/move_area.dart';
import 'package:mywin/components/window_header.dart';
import 'package:window_manager/window_manager.dart';

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

  // @override
  // void onWindowEvent(String eventName) {
  //   print('[WindowManager] onWindowEvent: $eventName');
  // }

  // @override
  // void onWindowClose() {
  //   // do something
  // }

  // @override
  // void onWindowFocus() {
  //   // do something
  // }

  // @override
  // void onWindowBlur() {
  //   // do something
  // }

  // @override
  // void onWindowMaximize() {
  //   // do something
  // }

  // @override
  // void onWindowUnmaximize() {
  //   // do something
  // }

  // @override
  // void onWindowMinimize() {
  //   // do something
  // }

  // @override
  // void onWindowRestore() {
  //   // do something
  // }

  // @override
  // void onWindowResize() {
  //   // do something
  // }

  // @override
  // void onWindowMove() {
  //   // do something
  // }

  // @override
  // void onWindowEnterFullScreen() {
  //   // do something
  // }

  // @override
  // void onWindowLeaveFullScreen() {
  //   // do something
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the Home object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      //   elevation: 0,
      // ),
      body: Column(
        children: <Widget>[
          // MoveArea(
          //     height: 48.0,
          //     child: Row(
          //       children: <Widget>[
          //         const Padding(
          //           padding: EdgeInsets.only(left: 8.0, right: 8.0),
          //           child: Icon(
          //             Icons.flutter_dash,
          //             color: Colors.blue,
          //           ),
          //         ),
          //         const Expanded(
          //             child: Text(
          //           'Window应用程序',
          //           style: TextStyle(
          //               color: Colors.blue, fontWeight: FontWeight.bold),
          //         )),
          //         SizedBox(
          //           width: 48,
          //           height: 48,
          //           child: PopupMenuButton(
          //               padding: EdgeInsets.zero,
          //               splashRadius: 20,
          //               elevation: 2.0,
          //               tooltip: '更多操作',
          //               onSelected: (value) {
          //                 // 选中的值
          //               },
          //               itemBuilder: (BuildContext context) =>
          //                   <PopupMenuEntry<String>>[
          //                     const PopupMenuItem(
          //                       padding: EdgeInsets.only(
          //                         left: 8.0,
          //                         right: 8.0,
          //                       ),
          //                       height: 32.0,
          //                       value: '这是增加',
          //                       child: Text('第一个选项'),
          //                     ),
          //                     const PopupMenuItem(
          //                       padding: EdgeInsets.only(
          //                         left: 8.0,
          //                         right: 8.0,
          //                       ),
          //                       height: 32.0,
          //                       value: '这是删除',
          //                       child: Text('第二个项'),
          //                     )
          //                   ],
          //               child: const Icon(Icons.menu)),
          //         ),
          //         // 最小化按钮
          //         SizedBox(
          //           width: 48,
          //           height: 48,
          //           child: InkWell(
          //             onTap: () async {
          //               if (!await windowManager.isMinimized()) {
          //                 windowManager.minimize();
          //               }
          //             },
          //             child: const Icon(Icons.minimize_outlined),
          //           ),
          //         ),
          //         // 最大化按钮
          //         SizedBox(
          //           width: 48,
          //           height: 48,
          //           child: InkWell(
          //             onTap: () async {
          //               if (await windowManager.isMaximized()) {
          //                 windowManager.unmaximize();
          //               } else {
          //                 windowManager.maximize();
          //               }
          //             },
          //             child: const Icon(Icons.square_outlined),
          //           ),
          //         ),
          //         // 关闭按钮
          //         SizedBox(
          //           width: 48,
          //           height: 48,
          //           child: InkWell(
          //             onTap: () {
          //               windowManager.close();
          //             },
          //             hoverColor: Colors.red,
          //             child: const Icon(Icons.close),
          //           ),
          //         ),
          //       ],
          //     )),
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
                    'Window应用程序',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          const Divider(
            height: 1.0,
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
