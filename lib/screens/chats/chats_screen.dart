import 'package:chat/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label:"Chats" ),
       BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
      ],),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [IconButton(onPressed: () {},
        icon: Icon(Icons.search),
      ),
      ],
    );
  }
}
