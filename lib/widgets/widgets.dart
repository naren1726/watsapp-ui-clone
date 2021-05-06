import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  ChatListItem(
      {@required this.name,
      @required this.lastSeen,
      @required this.imageURL,
      this.onTap});
  final String name;
  final String lastSeen;
  final String imageURL;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: new Text(name,
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: new Text('Last seen at $lastSeen'),
      leading: CircleAvatar(backgroundImage: NetworkImage(imageURL)),
      onTap: onTap,
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Yesterday'),
        ],
      ),
    );
  }
}

class StatusListItem extends StatelessWidget {
  StatusListItem(
      {@required this.name,
      @required this.lastSeenTime,
      @required this.imageURL});
  final String name;
  final String lastSeenTime;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: new Text(name,
          style: new TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
              color: Colors.white)),
      subtitle: new Text(lastSeenTime),
      leading: CircleAvatar(backgroundImage: NetworkImage(imageURL)),
    );
  }
}
