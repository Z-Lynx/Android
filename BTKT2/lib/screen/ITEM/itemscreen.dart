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
  TextEditingController _tenthuonggoi = TextEditingController();
  TextEditingController _tenkhoahoc = TextEditingController();
  TextEditingController _image = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _thongtin = TextEditingController();
  TextEditingController _kichco = TextEditingController();
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
                      label: "Tên Thường Gọi",
                      typeController: _tenthuonggoi,
                      obscureText: false,
                      icon_off: FontAwesomeIcons.user,
                    ), 
                    inputText(
                      typeController: _tenkhoahoc,
                      label: "Tên Khoa Học",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.fileWord,
                    ),
                    inputText(
                      typeController: _thongtin,
                      label: "Thông Tin",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.fileWord,
                    ),
                    inputText(
                      typeController: _price,
                      label: "Giá ",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.dollarSign,
                    ),
                    inputText(
                      typeController: _image,
                      label: "Link image",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.image,
                    ),
                    inputText(
                      typeController: _kichco,
                      label: "Thông Tin Kích Cỡ",
                      obscureText: false,
                      icon_off: FontAwesomeIcons.star,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        if (_tenthuonggoi.text == "" ||
                            _tenkhoahoc.text == "" ||
                            _image.text == "" ||
                            _price.text == "" ||
                            _kichco.text == "" ||
                            _thongtin.text == ""
                            ) {
                          Fluttertoast.showToast(
                            msg: 'Làm ơn nhập full dữ liệu',
                            backgroundColor: Colors.grey,
                          );
                        } else {
                          i = database.child("DATA_CA").push().key.toString();
                          // ADD
                          database
                              .child("DATA_CA")
                              .child( i)
                              .child("tenthuonggoi")
                              .set(_tenthuonggoi.text)
                              .asStream();
                          database
                              .child("DATA_CA")
                              .child(i)
                              .child("tenkhoahoc")
                              .set(_tenkhoahoc.text)
                              .asStream();
                          database
                              .child("DATA_CA")
                              .child( i)
                              .child("thongtin")
                              .set(_thongtin.text)
                              .asStream();
                          database
                              .child("DATA_CA")
                              .child(i)
                              .child("price")
                              .set(_price.text)
                              .asStream();
                          database
                              .child("DATA_CA")
                              .child(i)
                              .child("image")
                              .set(_image.text)
                              .asStream();
                          database
                              .child("DATA_CA")
                              .child( i)
                              .child("kichco")
                              .set(_kichco.text)
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
