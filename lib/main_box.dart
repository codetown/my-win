import 'package:flutter/material.dart';
// import './top_bar.dart';

const sidebarColor = Color(0xFFec4141);

class MainBox extends StatelessWidget {
  const MainBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(
            left: 16.0, top: 12.0, bottom: 12.0, right: 16.0),
        height: 65.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xFFEEEEEE), width: 1),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.network(
                  'https://gitlab.com/codetown/codedata/-/raw/master/avatars/avt108.jpg'),
            ),
            const Text(
              "孙猴子",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      Expanded(
          child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF2F2F2),
          border: Border(
            top: BorderSide(color: Color(0xFFEEEEEE), width: 1),
          ),
        ),
      )),
    ]);
  }
}
