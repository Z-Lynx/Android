import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value1 = 2.0;
  double _value2 = 2.0;
  double _value3 = 2.0;

  var rng = Random();

  int _diem = 100;

  bool _pokemon1 = false;
  bool _pokemon2 = false;
  bool _pokemon3 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuộc Đua Kỳ Thú 2'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Text(
                "Điểm Của Bạn $_diem",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                if (_pokemon1 || _pokemon2 || _pokemon3) {
                  _value1 = 2.0;
                  _value2 = 2.0;
                  _value3 = 2.0;

                  while (true) {
                    double one = rng.nextDouble();
                    double two = rng.nextDouble();
                    double three = rng.nextDouble();

                    if (_value1 >= 10.0) {
                      if (_pokemon1) {
                        _diem += 5;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Chúc Mừng'),
                            content: const Text("Bạn Chọn Đúng Rồi"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Chúc May Mắn Lần Sau'),
                            content: const Text("Nhân Vật 1 Thắng"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ),
                        );
                        _diem -= 5;
                      }
                      break;
                    }
                    if (_value2 >= 10.0) {
                      if (_pokemon2) {
                        _diem += 5;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Chúc Mừng'),
                            content: const Text("Bạn Chọn Đúng Rồi"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Chúc May Mắn Lần Sau'),
                            content: const Text("Nhân Vật 1 Thắng"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ),
                        );
                        _diem -= 5;
                      }
                      break;
                    }
                    if (_value3 >= 10.0) {
                      if (_pokemon3) {
                        _diem += 5;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Chúc Mừng'),
                            content: const Text("Bạn Chọn Đúng Rồi"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Chúc May Mắn Lần Sau'),
                            content: const Text("Nhân Vật 3 Thắng"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ),
                        );
                        _diem -= 5;
                      }
                      break;
                    }
                    await Future.delayed(const Duration(seconds: 1), () {
                      setState(() {
                        _value1 += one;
                        _value2 += two;
                        _value3 += three;
                        if (_value1 >= 10.0){
                          _value1 = 10.0;
                        }
                        if (_value2 >= 10.0){
                          _value2 = 10.0;
                        }
                        if (_value3 >= 10.0){
                          _value3 = 10.0;
                        }
                      });
                    });
                  }
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text('Lỗi'),
                            content: const Text("Xin mời bạn cá độ"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Oke'),
                              ),
                            ],
                          ));
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.red,
                        Colors.pink,
                        Color.fromARGB(255, 243, 33, 138),
                      ]),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Start Game",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 22),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: _pokemon1,
                  activeColor: const Color(0xFFFF9900),
                  onChanged: (value) {
                    setState(() {
                      _pokemon1 = value!;
                      _pokemon2 = false;
                      _pokemon3 = false;
                    });
                  },
                ),
                Expanded(
                  child: Center(
                      child: SfSliderTheme(
                    data: SfSliderThemeData(
                        thumbColor: Colors.white,
                        thumbRadius: 15,
                        thumbStrokeWidth: 2,
                        thumbStrokeColor: const Color.fromARGB(0, 33, 149, 243)),
                    child: SfSlider(
                      min: 2.0,
                      max: 10.0,
                      value: _value1,
                      thumbIcon: Image.asset('images/1.png'),
                      onChanged: (newValue) {
                        setState(() {
                          _value1 = newValue;
                        });
                      },
                    ),
                  )),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: _pokemon2,
                  activeColor: const Color.fromARGB(255, 255, 153, 0),
                  onChanged: (value) {
                    setState(() {
                      _pokemon2 = value!;
                      _pokemon1 = false;
                      _pokemon3 = false;
                    });
                  },
                ),
                Expanded(
                  child: Center(
                      child: SfSliderTheme(
                    data: SfSliderThemeData(
                        thumbColor: Color.fromARGB(255, 255, 255, 255),
                        thumbRadius: 15,
                        thumbStrokeWidth: 2,
                        thumbStrokeColor: Color.fromARGB(0, 33, 149, 243)),
                    child: SfSlider(
                      min: 2.0,
                      max: 10.0,
                      value: _value2,
                      thumbIcon: Image.asset('images/2.png'),
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _value2 = newValue;
                        });
                      },
                    ),
                  )),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: _pokemon3,
                  activeColor: const Color.fromARGB(255, 255, 153, 0),
                  onChanged: (value) {
                    setState(() {
                      _pokemon3 = value!;
                      _pokemon2 = false;
                      _pokemon1 = false;
                    });
                  },
                ),
                Expanded(
                  child: Center(
                      child: SfSliderTheme(
                    data: SfSliderThemeData(
                        thumbColor: Color.fromARGB(255, 255, 255, 255),
                        thumbRadius: 15,
                        thumbStrokeWidth: 2,
                        thumbStrokeColor: Color.fromARGB(0, 33, 149, 243)),
                    child: SfSlider(
                      min: 2.0,
                      max: 10.0,
                      value: _value3,
                      thumbIcon: Image.asset('images/3.png'),
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _value3 = newValue;
                        });
                      },
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
