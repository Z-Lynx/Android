import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class screenbmi extends StatefulWidget {
  const screenbmi({Key? key}) : super(key: key);

  @override
  State<screenbmi> createState() => _screenbmiState();
}

enum SingingSex { man, wommen }

class _screenbmiState extends State<screenbmi> {
  SingingSex? _sex = SingingSex.man;
  String width = '';
  double w = 0;
  String height = '';
  Text BMI() {
    w = int.parse(width) / (int.parse(height) * int.parse(height));
    if (w < 18) {
      return Text("người gầy");
    } else if (w < 24.9) {
      return Text("người bình thường");
    } else if (w < 29.9) {
      return Text("người béo phì độ I");
    } else if (w < 34.9) {
      return Text("người béo phì độ II");
    } else {
      return Text("người béo phì độ III");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.white,
              Colors.black,
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Math BMI",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 500,
            width: 355,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                inputText(
                  label: "Height",
                  obscureText: false,
                  paramsOnSave: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                inputText(
                  label: "Width",
                  obscureText: false,
                  paramsOnSave: (value) {
                    setState(() {
                      width = value;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('BMI'),
                      content:BMI(), 
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Oke'),
                        ),
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.red, Colors.pink, Colors.blue]),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Tính Toán",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}

class inputText extends StatelessWidget {
  final String label;
  final TextEditingController? typeController;
  final bool obscureText;
  final IconData? icon;
  final IconData? icon_off;
  final Function()? press;
  final Function(String)? paramsOnSave;
  final String? paramsValidator;
  const inputText({
    Key? key,
    required this.label,
    this.typeController,
    required this.obscureText,
    this.icon,
    this.icon_off,
    this.press,
    this.paramsOnSave,
    this.paramsValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: TextField(
          controller: typeController,
          onChanged: paramsOnSave,
          obscureText: obscureText,
          decoration: InputDecoration(
            errorText: paramsValidator,
            labelText: label,
            suffixIcon: InkWell(
              onTap: press,
              child: Icon(
                obscureText ? icon : icon_off,
                size: 17,
              ),
            ),
          ),
        ));
  }
}
