import 'package:chat/constants.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar() ,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title:  Row(
        children: [
          BackButton(),
          CircleAvatar(
          backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [
            Text("Kriston", style: TextStyle(fontSize: 16),
            ),
            Text("Active", style: TextStyle(fontSize: 16),),
          ],
          ),
        ],
      ),
    );
  }
}
