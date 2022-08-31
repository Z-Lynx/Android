import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class screenTask extends StatefulWidget {
  const screenTask({Key? key}) : super(key: key);

  @override
  State<screenTask> createState() => _screenTaskState();
}

class _screenTaskState extends State<screenTask> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return screenTask();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: size.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Task 1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "31-10-2021",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return screenTask();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: size.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Task 1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "31-10-2021",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return screenTask();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: size.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Task 1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "31-10-2021",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return screenTask();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: size.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Task 1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "31-10-2021",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return screenTask();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: size.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Task 1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "31-10-2021",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ),
        ])));
  }
}
