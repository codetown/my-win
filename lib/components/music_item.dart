import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  const MusicItem(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String imgUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(2.0),
        child: Image.network(
          imgUrl,
          width: 48.0,
          height: 48.0,
          fit: BoxFit.fill,
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
              height: 24.0,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 24.0,
              alignment: Alignment.centerLeft,
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 6.0),
              child: Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12.0, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
