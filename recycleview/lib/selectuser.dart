import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class selectuser extends StatefulWidget {
  const selectuser({Key? key, required this.user}) : super(key: key);
  final String user;
  @override
  State<selectuser> createState() => _selectuserState();
}

class _selectuserState extends State<selectuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SELECT USER"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          color: Colors.blue,
          width: 120.0,
          height: 120.0,
          child: Center(
            child: Text(
              "Member \n" + widget.user,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
