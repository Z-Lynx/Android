import 'package:flutter/material.dart';
import 'package:recycleview/selectuser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Recycle view'),
    );
  }
}

final List<String> entries = <String>[
  'Nguyễn Trần Tiến',
  'Nguyễn Trần Tiến 2',
  'Nguyễn Trần Tiến3',
  'Nguyễn Trần Tiến4',
  'Nguyễn Trần Tiến5',
  'Nguyễn Trần Tiến6',
  'Nguyễn Trần Tiến7',
  'Nguyễn Trần Tiến8',
  'Nguyễn Trần Tiến9',
  'Nguyễn Trần Tiến10',
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: entries.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return selectuser(user: entries[index].toString());
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "User \n" + entries[index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
