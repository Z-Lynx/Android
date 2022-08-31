import 'package:flutter/material.dart';
import 'package:tuan3_lt/screen/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AppByLynn',
        theme: ThemeData(primaryColor: Colors.white),
        home: loginPage());
  }
}