import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class WindowHeader extends StatelessWidget {
  final double height;

  final Widget child;

  const WindowHeader(
      {Key? key, this.height = 48, this.child = const SizedBox.expand()})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final needMoveWindow = const [
      TargetPlatform.windows,
      TargetPlatform.macOS,
    ].contains(defaultTargetPlatform);
    if (!needMoveWindow) {
      return child;
    }
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onPanStart: (details) {
              windowManager.startDragging();
            },
            onDoubleTap: () async {
              if (await windowManager.isMaximized()) {
                windowManager.restore();
              } else {
                windowManager.maximize();
              }
            },
            child: SizedBox(height: height, child: child),
          ),
        ),
        SizedBox(
          width: 48,
          height: height,
          child: PopupMenuButton(
              padding: EdgeInsets.zero,
              splashRadius: 20,
              elevation: 2.0,
              tooltip: '更多操作',
              onSelected: (value) {
                // 选中的值
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      height: 32.0,
                      value: '这是增加',
                      child: Text('第一个选项', style: TextStyle(fontSize: 13.0)),
                    ),
                    const PopupMenuItem(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      height: 32.0,
                      value: '这是删除',
                      child: Text('第二个项', style: TextStyle(fontSize: 13.0)),
                    )
                  ],
              child: const Icon(Icons.menu)),
        ),
        // 最小化按钮
        SizedBox(
          width: 48,
          height: height,
          child: InkWell(
            onTap: () async {
              if (!await windowManager.isMinimized()) {
                windowManager.minimize();
              }
            },
            child: const Icon(Icons.minimize_outlined),
          ),
        ),
        // 最大化按钮
        SizedBox(
          width: 48,
          height: height,
          child: InkWell(
            onTap: () async {
              if (await windowManager.isMaximized()) {
                windowManager.unmaximize();
              } else {
                windowManager.maximize();
              }
            },
            child: const Icon(Icons.square_outlined),
          ),
        ),
        // 关闭按钮
        SizedBox(
          width: 48,
          height: height,
          child: InkWell(
            onTap: () {
              windowManager.close();
            },
            hoverColor: Colors.red,
            child: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}
