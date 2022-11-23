import 'package:btgk_android/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../config/constants.dart';
import '../../utils/inputvalid.dart';
import '../appbar/navigationDrawer.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool isRememberMe = false;
  bool _obscureText = true;
  TextEditingController _name = TextEditingController();
  TextEditingController _desc = TextEditingController();
  TextEditingController _image = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _rate = TextEditingController();
  TextEditingController _shotdesc = TextEditingController();
  TextEditingController _type = TextEditingController();
  String i ="";
  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance
        .refFromURL("https://btgk-77fa1-default-rtdb.firebaseio.com/");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD ITEM"),
      ),
      drawer: navigationDrawer(),
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
              Container(
                height: size.height - 200,
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
                      "Item Account !!",
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
                      typeController: _name,
                      obscureText: false,
                      icon_off: FontAwesomeIcons.user,
                    ),
                    inputText(
                      typeController: _price,
                      label: "price",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.dollarSign,
                    ),
                    inputText(
                      typeController: _image,
                      label: "image",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.image,
                    ),
                    inputText(
                      typeController: _desc,
                      label: "desc",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.fileWord,
                    ),
                    inputText(
                      typeController: _shotdesc,
                      label: "shortDesc",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.fileWord,
                    ),
                    inputText(
                      typeController: _rate,
                      label: "rate",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.star,
                    ),
                    inputText(
                      typeController: _type,
                      label: "type",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.fileWord,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        if (_name.text == "" ||
                            _desc.text == "" ||
                            _image.text == "" ||
                            _price.text == "" ||
                            _rate.text == "" ||
                            _shotdesc.text == "" ||
                            _type.text == "") {
                          Fluttertoast.showToast(
                            msg: 'Làm ơn nhập full dữ liệu',
                            backgroundColor: Colors.grey,
                          );
                        } else {
                          i = database.child("DATA").push().key.toString();

                          // ADD
                          database
                              .child("DATA")
                              .child( i)
                              .child("name")
                              .set(_name.text)
                              .asStream();
                          database
                              .child("DATA")
                              .child(i)
                              .child("desc")
                              .set(_desc.text)
                              .asStream();
                          database
                              .child("DATA")
                              .child( i)
                              .child("image")
                              .set(_image.text)
                              .asStream();
                          database
                              .child("DATA")
                              .child(i)
                              .child("price")
                              .set(_price.text)
                              .asStream();
                          database
                              .child("DATA")
                              .child(i)
                              .child("type")
                              .set(_type.text)
                              .asStream();
                          database
                              .child("DATA")
                              .child( i)
                              .child("shortDesc")
                              .set(_shotdesc.text)
                              .asStream();
                          database
                              .child("DATA")
                              .child(i)
                              .child("rate")
                              .set(_rate.text)
                              .asStream();
                          Fluttertoast.showToast(
                            msg: 'Thêm Thành Công ',
                            backgroundColor: Colors.grey,
                          );
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
                            "Add Item",
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
