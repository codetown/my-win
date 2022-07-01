import 'package:flutter/material.dart';

class MusicBill extends StatelessWidget {
  const MusicBill(
      {Key? key,
      required this.width,
      required this.imgUrl,
      required this.visits,
      required this.title})
      : super(key: key);
  final double width;
  final String imgUrl;
  final int visits;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: Stack(
            children: <Widget>[
              Image.network(
                imgUrl,
                width: width,
                height: width,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 2.0,
                right: 2.0,
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.surround_sound,
                      color: Color(0xccffffff),
                      size: 12.0,
                    ),
                    Text("$visits万",
                        style: const TextStyle(
                            fontSize: 12.0, color: Color(0xccffffff)))
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          width: width,
          height: 50.0,
          child: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12.0, height: 1.25),
          ),
        ),
      ]),
    );
  }
}
