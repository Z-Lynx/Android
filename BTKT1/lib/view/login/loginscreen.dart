import 'package:list_view__/config/constants.dart';
import 'package:list_view__/view/profile/profilescreen.dart';
import 'package:list_view__/view/register/registerscreen.dart';
import 'package:list_view__/view/Casi/homeCasi.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:list_view__/view/utils/inputvalid.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassWord = TextEditingController();
  String email = '';
  String password = '';
  bool isRememberMe = false;
  bool _obscureText = true;
  bool checkInputEmail = false;
  Box _box = Hive.box('loginBox');

  String? get _errorText {
    final text = _controllerEmail.value.text;
    if (checkInputEmail) {
      if (text.isEmpty || !text.contains('@')) {
        return 'Email Is invalid';
      }
    }
    return null;
  }

  @override
  void initState() {
    super.initState;
    print(_box.get('email'));
    print(_box.get('pass'));
    _controllerEmail.text = _box.get('email') ?? "";
    _controllerPassWord.text = _box.get('pass') ?? "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              height: 40,
            ),
            Text(
              "LynnCoder",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
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
                    "Welcome !!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Login To Your Account.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  inputText(
                    typeController: _controllerEmail,
                    label: "Email Address",
                    obscureText: false,
                    icon_off: FontAwesomeIcons.envelope,
                    icon: FontAwesomeIcons.envelope,
                    paramsOnSave: (value) {
                      setState(() {
                        if (!checkInputEmail) {
                          checkInputEmail = true;
                        }
                        email = value;
                      });
                    },
                  ),
                  inputText(
                    typeController: _controllerPassWord,
                    label: "Password",
                    obscureText: _obscureText,
                    icon_off: FontAwesomeIcons.eye,
                    icon: FontAwesomeIcons.eyeSlash,
                    press: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    paramsOnSave: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Checkbox(
                            value: isRememberMe,
                            activeColor: Color.fromARGB(255, 255, 153, 0),
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: clickColor,
                            ),
                          ),
                        ]),
                        Text(
                          'Forget Password',
                          style: TextStyle(
                            color: clickColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (_controllerEmail.text == 'admin' && _controllerPassWord.text == 'admin') {
                          if (isRememberMe) {
                            _box.put('email', _controllerEmail.value.text);
                            _box.put('pass', _controllerPassWord.value.text);
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return homecasie();
                              },
                            ),
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: 'Login Error',
                            backgroundColor: Colors.grey,
                          );
                        }
                      });
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
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                          },
                        ),
                      );
                    },
                    child: new Padding(
                      padding: new EdgeInsets.all(0.0),
                      child: Text(
                        'No account click here',
                        style: TextStyle(
                          color: Color.fromARGB(255, 1, 22, 255),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(FontAwesomeIcons.facebookF),
                      Icon(FontAwesomeIcons.solidEnvelope),
                      Icon(FontAwesomeIcons.twitterSquare)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
