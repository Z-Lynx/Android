import 'package:btgk_android/screen/appbar/navigationDrawer.dart';
import 'package:btgk_android/screen/model/caModel.dart';
import 'package:btgk_android/screen/shop/menuItemcard.dart';
import 'package:btgk_android/screen/shop/shopScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';


class homeShope extends StatefulWidget {
  const homeShope({Key? key}) : super(key: key);

  @override
  State<homeShope> createState() => _homeShopeState();
}

class _homeShopeState extends State<homeShope> {
  final database = FirebaseDatabase.instance
      .refFromURL("https://btgk-77fa1-default-rtdb.firebaseio.com/");
  List<Ca> menu = [];

  var processing;

  Future<List<Ca>> getData() async {
    database.child("DATA_CA").onValue.listen((event) {
      for (final childs in event.snapshot.children) {
        menu.add(Ca(
          id: childs.key.toString(),
          tenthuonggoi: childs.child("tenthuonggoi").value.toString(),
          tenkhoahoc: childs.child("tenkhoahoc").value.toString(),
          price: int.parse(childs.child("price").value.toString()),
          thongtin: childs.child("thongtin").value.toString(),
          kichco: childs.child("kichco").value.toString(),
          image: childs.child("image").value.toString(),
        ));
      }
    });
    return menu;
  }

  @override
  void initState() {
    if (menu.isNotEmpty) {
      menu.clear();
    }
    processing = getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: processing,
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Shop Bán Cá"),
              ),
              drawer: navigationDrawer(),
              body: ListView.builder(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                itemCount: menu.length,
                itemBuilder: (context, int key) {
                  return MenuItemCard(index: key, menu: menu);
                },
              ));
        } else {
          return Scaffold(
              appBar: AppBar(
                title: Text("Shop Bán Cá"),
              ),
              drawer: navigationDrawer(),
              body: Container(
                child: Center(
                  child: Text('Loading Data, Pls Load Again'),
                ),
              ));
        }
      },
    );
  }
}
