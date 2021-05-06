import 'package:flutter/material.dart';

class YapBar extends StatelessWidget {
  YapBar({
    @required this.name,
    @required this.imageURL,
  });
  final String name;
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF075E55),
      title: Text(name),
      leading: Row(children: [
        Icon(Icons.arrow_back),
        Expanded(
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageURL),
          ),
        ),
      ]),
      actions: [
        IconButton(
          icon: Icon(Icons.videocam),
          tooltip: 'search',
          onPressed: () {},
        ), //IconButton
        IconButton(
          icon: Icon(Icons.call),
          tooltip: 'search',
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          tooltip: 'search',
          onPressed: () {},
        ),
      ],
    );
  }
}
