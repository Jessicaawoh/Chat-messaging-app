import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ChatInputField(),
      ],
    );
  }
}

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding/2
      ),
      decoration: BoxDecoration(color: Colors.blueGrey,
      ) ,
      child: SafeArea(
          child: Row(
        children: [
          Icon(
            Icons.mic, color: kPrimaryColor,),
          SizedBox(width: kDefaultPadding,),
          Expanded(child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*0.75),
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(.40),


            ),
            child: Row(
              children: [
                Icon
                (Icons.sentiment_satisfied_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.64)
              ),
                SizedBox(width: kDefaultPadding / 4,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
      ),
    );
  }
}
