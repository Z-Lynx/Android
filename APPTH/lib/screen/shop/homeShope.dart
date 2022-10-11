import 'package:appth/screen/appbar/navigationDrawer.dart';
import 'package:appth/screen/model/coffeModel.dart';
import 'package:appth/screen/shop/menuItemcard.dart';
import 'package:appth/screen/shop/shopScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homeShope extends StatefulWidget {
  const homeShope({Key? key}) : super(key: key);

  @override
  State<homeShope> createState() => _homeShopeState();
}

class _homeShopeState extends State<homeShope> {
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
