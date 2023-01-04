import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {required Key key,
      required this.iconData,
      this.iconColor = Colors.grey,
      this.title = '',
      this.count = 0,
      this.titleColor = const Color(0xff555555)})
      : super(key: key);
  final IconData iconData;
  final Color iconColor;
  final String title;
  final int count;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 48.0,
          width: 48.0,
          child: Icon(
            iconData,
            color: iconColor,
          ),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(children: <TextSpan>[
              TextSpan(
                  text: title,
                  style: TextStyle(
                      fontSize: 14.0,
                      color: titleColor,
                      fontWeight: FontWeight.w500)),
              TextSpan(
                text: "  ($count)",
                style: const TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ]),
          ),
        ),
        SizedBox(
          height: 48.0,
          width: 36.0,
          child: Icon(
            Icons.navigate_next,
            color: Colors.grey[300],
            size: 32.0,
          ),
        ),
      ],
    );
  }
}
