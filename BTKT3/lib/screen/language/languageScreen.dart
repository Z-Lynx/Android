import 'package:btgk_android/screen/appbar/navigationDrawer.dart';
import 'package:btgk_android/screen/language/languageItemScreen.dart';
import 'package:btgk_android/screen/model/languageModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class languageScreen extends StatefulWidget {
  const languageScreen({super.key});

  @override
  State<languageScreen> createState() => _languageScreenState();
}

class _languageScreenState extends State<languageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NGÔN NGỮ"),
        ),
        drawer: navigationDrawer(),
        body: ListView.builder(
          itemCount: menuLanguage.length,
          itemBuilder: (context, int key) {
            return Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 95, 94, 94),
                  height: 1,
                  width: double.infinity,
                ),
                MathItemScreen(index: key, menu: menuLanguage),
              ],
            );
            
          },
        ));
  }
}