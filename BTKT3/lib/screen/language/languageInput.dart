import 'package:btgk_android/config/constants.dart';
import 'package:btgk_android/screen/appbar/navigationDrawer.dart';
import 'package:btgk_android/screen/model/languageModel.dart';
import 'package:btgk_android/utils/inputvalid.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

class math extends StatefulWidget {
  final int id;
  final String name;
  final List<Language> model;

  const math(
      {super.key, required this.id, required this.name, required this.model});

  @override
  State<math> createState() => _mathState();
}

class _mathState extends State<math> {
  TextEditingController _valueText = TextEditingController();
  String result = "";
  final database = FirebaseDatabase.instance
      .refFromURL("https://btgk-77fa1-default-rtdb.firebaseio.com/");

  final ScrollController _firstController = ScrollController();
  List<History> menu = [];
  Future getData() async {
    database.child("DATA_NN").onValue.listen((event) {
      for (final childs in event.snapshot.children) {
        setState(() {
          menu.add(History(
            id: childs.child("id").value.toString(),
            content: childs.child("content").value.toString(),
          ));
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PHÉP TÍNH"),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            inputText(
              label: "Nhập Câu Ví Dụ",
              typeController: _valueText,
              obscureText: false,
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  String i = database.child("DATA_NN").push().key.toString();
                  // ADD
                  database
                      .child("DATA_NN")
                      .child(i)
                      .child("content")
                      .set(_valueText.text.toString())
                      .asStream();
                  database
                      .child("DATA_NN")
                      .child(i)
                      .child("id")
                      .set(widget.id.toString())
                      .asStream();
                  Fluttertoast.showToast(
                    msg: 'Lưu Thành Công ',
                    backgroundColor: Colors.grey,
                  );
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
                      colors: arrayBgColor),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Lưu",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "HISTORY",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              height: 250,
              child: Scrollbar(
                thumbVisibility: true,
                controller: _firstController,
                child: ListView.builder(
                  controller: _firstController,
                  itemCount: menu.length,
                  itemBuilder: (context, key) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 224, 220, 220),
                              child: Image.asset(
                                widget.model[int.parse(menu[key].id)].icon,
                                fit: BoxFit.fitWidth,
                                width: 60,
                                height: 70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class History {
  String id;
  String content;

  History({required this.id, required this.content});
}
