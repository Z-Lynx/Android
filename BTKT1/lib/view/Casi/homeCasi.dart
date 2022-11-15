import 'package:list_view__/view/model/casiModel.dart';
import 'package:list_view__/view/Casi/menuItemcard.dart';
import 'package:list_view__/view/Casi/casiScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homecasie extends StatefulWidget {
  const homecasie({Key? key}) : super(key: key);

  @override
  State<homecasie> createState() => _homecasieState();
}

class _homecasieState extends State<homecasie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DANH SÁCH CA SĨ VIỆT NAM"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0,40,0,0),
        child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
      )
    );
  }
}
