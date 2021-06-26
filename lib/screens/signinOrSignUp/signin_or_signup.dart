

import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/Messages/message_screen.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/signinOrSignUp/signIn.dart';
import 'package:chat/screens/signinOrSignUp/signUp.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
        children: [
          Spacer(flex: 2),
            Image.asset(
              'assets/images/Logo_dark.png',
              height: 146,
            ),
            Spacer(),
            PrimaryButton(
              text: "Sign In",
              press: () => Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => MessagesScreen(),),),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            PrimaryButton(
              color: Theme.of(context).colorScheme.secondary,
              text: "Sign Up",
              press: () => Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => MessagesScreen(),),
              ),
            ),
          Spacer(flex: 2),
        ],
      ),
          )
      ),
    );
  }
}
