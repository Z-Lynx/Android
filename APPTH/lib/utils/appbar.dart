import 'package:appth/screen/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    toolbarHeight: 50,
    leading: BackButton(
      color: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          ),
        );
      },
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    elevation: 0,
    actions: [
      Icon(
        FontAwesomeIcons.gear,
        color: Colors.black,
      ),
    ],
  );
}
