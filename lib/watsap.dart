import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wats_app/widgets/constants.dart';
import 'package:wats_app/widgets/onTap.dart';
import 'package:wats_app/widgets/widgets.dart';

class TabbedAppBar extends StatelessWidget {
  final List<Widget> chats = [];
  @override
  Widget build(BuildContext context) {
    /// First we will initialise all the Chat Items
    for (int i = 0; i < 4; i++) {
      chats.add(
        ChatListItem(
          name: chatValues[i]['name'],
          lastSeen: chatValues[i]['lastSeen'],
          imageURL: chatValues[i]['imageURL'],
          onTap: () {
            print('You have clicked ${chatValues[i]['name']}!');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  body: Column(
                    children: [
                      YapBar(
                          name: "laddu",
                          imageURL:
                              'https://bmsit.irins.org/assets/profile_images/1159623.jpg'),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Expanded(
                            child: BottomAppBar(
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(50),
                                    ),
                                    borderSide: new BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.0,
                                width: 50.0,
                                child: FloatingActionButton(
                                  backgroundColor: const Color(0xff03dac6),
                                  foregroundColor: Colors.black,
                                  mini: true,
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    }

    return new MaterialApp(
      home: new DefaultTabController(
        length: 4,
        child: new Scaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            backgroundColor: Color(0xFF075E55),
            title: const Text('WhatsApp'),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () {},
              ), //IconButton
              IconButton(
                icon: Icon(Icons.more_vert),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ), //IconButton
            ],
            bottom: new TabBar(isScrollable: false, tabs: [
              new Tab(
                icon: Icon(Icons.camera_alt),
              ),
              new Tab(
                text: 'CHATS',
              ),
              new Tab(
                text: 'STATUS',
              ),
              new Tab(
                text: 'CALLS',
              ),
            ]),
          ),
          body: new TabBarView(
            children: [
              new ListView(
                children: chats,
              ),
              new ListView(
                children: chats,
              ),
              new ListView(
                children: status,
              ),
              new ListView(
                children: chats,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //

  final List<Widget> status = [
    ChatListItem(
      name: chatValues[0]['name'],
      lastSeen: chatValues[0]['lastSeen'],
      imageURL: chatValues[0]['imageURL'],
    ),
    new Divider(
      color: Color(0xFFA8ADB0),
      indent: 75,
      thickness: 0.5,
    ),
    ChatListItem(
      name: chatValues[1]['name'],
      lastSeen: chatValues[1]['lastSeen'],
      imageURL: chatValues[1]['imageURL'],
    ),
    new Divider(
      color: Color(0xFFA8ADB0),
      indent: 75,
      thickness: 0.5,
    ),
    StatusListItem(
      name: statusValues[2]['name'],
      lastSeenTime: statusValues[2]['lastSeen'],
      imageURL: statusValues[2]['imageURL'],
    ),
  ];
// List<Widget> chats = chatValues
//     .map((chat) => ChatListItem(
//           name: chat['name'],
//           lastSeen: chat['lastSeen'],
//           imageURL: chat['imageURL'],
//         ))
//     .toList();
//
// List<Widget> status = statusValues
//     .map((chat) => StatusListItem(
//           name: chat['name'],
//           lastSeenTime: 'Yesterday at' + chat['lastSeen'],
//           imageURL: chat['imageURL'],
//         ))
//     .toList();
//   new ListTile(
//     title: new Text('',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('+91 '),
//     leading: CircleAvatar(
//         backgroundImage: NetworkImage(
//             'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbmsit.irins.org%2Fprofile%2F115920&psig=AOvVaw3PgcP3XAuRsvuK5xU5cSDK&ust=1617819285007000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDJi9ic6u8CFQAAAAAdAAAAABAO')),
//   ),
//   new ListTile(
//     title: new Text('So Caaled Engineers',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('Dear freinds'),
//     leading: CircleAvatar(
//         backgroundImage: NetworkImage(
//             'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbmsit.irins.org%2Fprofile%2F115962&psig=AOvVaw3PgcP3XAuRsvuK5xU5cSDK&ust=1617819285007000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDJi9ic6u8CFQAAAAAdAAAAABAb')),
//   ),
//   new ListTile(
//     title: new Text('Me and Maa',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('3117 16th St'),
//     leading: CircleAvatar(
//         backgroundImage: NetworkImage(
//             'https://healthprofessions.ucf.edu/wp-content/uploads/sites/2/2018/06/Matt-Stock.jpg')),
//   ),
//   new ListTile(
//     title: new Text('Anna',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('last seen 10:15'),
//     leading: CircleAvatar(backgroundImage: NetworkImage('')),
//   ),
//   new ListTile(
//     title: new Text('Suhas Itchem',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('135 4th St #3000'),
//     leading: CircleAvatar(backgroundImage: NetworkImage('')),
//   ),
//   new Divider(),
//   new ListTile(
//     title: new Text('Sachin',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('757 Monterey Blvd'),
//     leading: CircleAvatar(backgroundImage: NetworkImage('')),
//   ),
//   new ListTile(
//     title: new Text('Reddy',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('1923 Ocean Ave'),
//     leading: CircleAvatar(backgroundImage: NetworkImage('')),
//   ),
//   new ListTile(
//     title: new Text('Chaiya Thai Restaurant',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('272 Claremont Blvd'),
//     leading: CircleAvatar(backgroundImage: NetworkImage('')),
//   ),
//   new ListTile(
//     title: new Text('La Ciccia',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('291 30th St'),
//     leading: new Icon(
//       Icons.restaurant,
//       color: Colors.blue[500],
//     ),
//   ),
// ];
}
