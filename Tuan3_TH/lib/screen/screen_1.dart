import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuan3_th/screen/screen_2.dart';

class Screen_One extends StatefulWidget {
  const Screen_One({Key? key}) : super(key: key);

  @override
  State<Screen_One> createState() => _Screen_OneState();
}

class _Screen_OneState extends State<Screen_One> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          height: size.height,
          width: size.width,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/linear.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget> [
          Text(
            "Chào Mừng Bạn",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Screen 1",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(height: 35,),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screen_Two();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                    ]),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Go Sreen 2",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
          ),
        ]),
        )],  
    ));
  }
}
