import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class MoveArea extends StatelessWidget {
  final double height;

  final Widget child;

  const MoveArea(
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
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onPanStart: (details) {
        WindowManager.instance.startDragging();
      },
      onDoubleTap: () async {
        if (await WindowManager.instance.isMaximized()) {
          WindowManager.instance.restore();
        } else {
          WindowManager.instance.maximize();
        }
      },
      child: SizedBox(height: height, child: child),
    );
  }
}
