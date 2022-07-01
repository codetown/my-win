import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 8.0, right: 12.0),
      child: Row(
        children: [
          const SizedBox(
            width: 250,
            height: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    hintText: "搜索",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
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
