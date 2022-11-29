import 'package:btgk_android/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

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
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassWord = TextEditingController();
  TextEditingController _controllerPassWordConfirm = TextEditingController();
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
                      typeController: _controllerEmail,
                      label: "Email Address",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.envelope,
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
                    ),
                    inputText(
                      typeController: _controllerPassWordConfirm,
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
                        if (_controllerEmail.text == "" ||
                            _controllerPassWordConfirm.text == "" ||
                            _controllerPassWord.text == "") {
                          Fluttertoast.showToast(
                            msg: 'Làm ơn nhập full dữ liệu',
                            backgroundColor: Colors.grey,
                          );
                        } else if (_controllerPassWordConfirm.text !=
                            _controllerPassWord.text) {
                          Fluttertoast.showToast(
                            msg: 'Mật khẩu Không trùng nhau',
                            backgroundColor: Colors.grey,
                          );
                        } else {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: _controllerEmail.text,
                                  password: _controllerPassWord.text)
                              .then((value) => Fluttertoast.showToast(
                                    msg: 'Tạo Tài Khoản Thành Công',
                                    backgroundColor: Colors.grey,
                                  ))
                              .onError((error, stackTrace) {
                              print(error.toString());
                              Fluttertoast.showToast(
                                msg: 'Lỗi : ' + error.toString(),
                                backgroundColor: Colors.grey,
                              );
                          });
                        }
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
