import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuan3_th/screen/screen_1.dart';
import 'package:tuan3_th/screen/screen_2.dart';

class Screen_Two extends StatefulWidget {
  const Screen_Two({Key? key}) : super(key: key);

  @override
  State<Screen_Two> createState() => _Screen_TwoState();
}

class _Screen_TwoState extends State<Screen_Two> {
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
            "Xin Chào Mình Là Nguyễn Trần Tiến",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "2050531200310",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screen_One();
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
                  "Go Back",
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
