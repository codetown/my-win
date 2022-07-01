import 'package:flutter/material.dart';

class PlayBar extends StatelessWidget {
  const PlayBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFEEEEEE), width: 1),
        ),
      ),
      child: Row(
        children: [
          Image.network(
            'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt107.jpg',
            width: 40,
            height: 40,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: LinearProgressIndicator(
                color: const Color(0xFFec4141),
                backgroundColor: Colors.grey[200],
                value: .2, //精确模式，进度20%
              ),
            ),
          ),
          IconButton(
            iconSize: 26,
            color: Colors.grey[300],
            hoverColor: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.cloud,
            ),
          ),
        ],
      ),
    );
  }
}
