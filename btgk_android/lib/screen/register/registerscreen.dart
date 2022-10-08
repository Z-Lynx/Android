import 'package:btgk_android/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/constants.dart';
import '../../utils/inputvalid.dart';
import '../appbar/navigationDrawer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isRememberMe = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, "Register"),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: arrayBgColor),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                width: 355,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Register Account !!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    inputText(
                      label: "Name",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.user,
                    ),
                    inputText(
                      label: "Phone",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.phone,
                    ),
                    inputText(
                      label: "Email Address",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.envelope,
                    ),
                    inputText(
                      label: "Password",
                      obscureText: _obscureText,
                      icon_off: FontAwesomeIcons.eye,
                      icon: FontAwesomeIcons.eyeSlash,
                      press: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    inputText(
                      label: "Confirm Password",
                      obscureText: _obscureText,
                      icon_off: FontAwesomeIcons.eye,
                      icon: FontAwesomeIcons.eyeSlash,
                      press: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return ProfileScreen();
                        //     },
                        //   ),
                        // );
                        Fluttertoast.showToast(
                          msg: 'GeeksforGeeks',
                          backgroundColor: Colors.grey,
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: arrayBtnColor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
