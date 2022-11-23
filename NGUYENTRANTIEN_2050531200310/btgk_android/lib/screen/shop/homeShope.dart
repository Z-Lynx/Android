import 'package:btgk_android/screen/appbar/navigationDrawer.dart';
import 'package:btgk_android/screen/model/coffeModel.dart';
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

 @override
  void initState() {
    setState(() {
      database.child("DATA").onValue.listen((event) {
      menu.clear();
      for (final childs in event.snapshot.children) {
        print(childs.child("images").value);
        menu.add(Coffee(
          id: childs.key.toString(),
          desc: childs.child("desc").value.toString(),
          image: childs.child("image").value.toString(),
          name: childs.child("name").value.toString(),
          price: int.parse(childs.child("price").value.toString()),
          rate: int.parse(childs.child("rate").value.toString()),
          shortDesc: childs.child("shortDesc").value.toString(),
          type: childs.child("type").value.toString(),
        ));
      }
    });
    }); 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      drawer: navigationDrawer(),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}
