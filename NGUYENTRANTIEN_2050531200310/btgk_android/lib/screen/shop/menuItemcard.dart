import 'package:btgk_android/screen/shop/homeShope.dart';
import 'package:btgk_android/screen/shop/shopScreen.dart';
import 'package:flutter/material.dart';
import 'package:btgk_android/screen/model/coffeModel.dart';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MenuItemCard extends StatefulWidget {
  final int index;

  const MenuItemCard({super.key, required this.index});

  @override
  State<MenuItemCard> createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  final database = FirebaseDatabase.instance
      .refFromURL("https://btgk-77fa1-default-rtdb.firebaseio.com/");
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => shop(
                                index: widget.index,
                              )));
                },
                child: Row(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          menu[widget.index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            menu[widget.index].name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            menu[widget.index].shortDesc,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            menu[widget.index].price.toString() + " \$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.brown[600],
                      size: 36,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        database
                            .child("DATA")
                            .child("" + menu[widget.index].id.toString())
                            .remove();
                        Fluttertoast.showToast(
                          msg: 'Xóa Thành Công !!',
                          backgroundColor: Colors.grey,
                        );
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return homeShope();
                          },
                        ));
                      });
                    },
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.brown[600],
                      size: 36,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
