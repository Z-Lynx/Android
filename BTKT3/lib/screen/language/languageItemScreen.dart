import 'package:btgk_android/screen/model/languageModel.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'languageInput.dart';

class MathItemScreen extends StatefulWidget {
  final int index;
  final List<Language> menu;

  const MathItemScreen({super.key, required this.index, required this.menu});

  @override
  State<MathItemScreen> createState() => _MathItemScreenState();
}

class _MathItemScreenState extends State<MathItemScreen> {
  final database = FirebaseDatabase.instance
      .refFromURL("https://btgk-77fa1-default-rtdb.firebaseio.com/");

  @override
  void init(){

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
      child: AspectRatio(
        aspectRatio: 4 / 1,
        child: Container(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => math(
                                id: widget.menu[widget.index].id,
                                name: widget.menu[widget.index].name,
                                model: widget.menu,
                              )));
                },
                child: Row(
                  children: <Widget>[
                     SizedBox(
                      height: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 1 / 1.25,
                      child: CircleAvatar(
                        backgroundColor:Color.fromARGB(255, 224, 220, 220),
                        child: Image.asset(
                          widget.menu[widget.index].icon,
                          fit: BoxFit.fitWidth,
                          width: 60,
                          height: 70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.menu[widget.index].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
