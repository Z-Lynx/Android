import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tuan3_lt/screen/screentask.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool isRememberMe = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/images/wave.svg',
                height: 200, width: 100, fit: BoxFit.fitHeight),
                  Text(
                    "Welcome !!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Login To Your Account.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  inputText(
                    label: "Email Address",
                    obscureText: false,
                    icon_off: FontAwesomeIcons.envelope,
                    icon: FontAwesomeIcons.envelope,
                  ),
                  inputText(
                    label: "Password",
                    obscureText: _obscureText,
                    icon_off: FontAwesomeIcons.eye,
                    icon: FontAwesomeIcons.eyeSlash,
                    press: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          Checkbox(
                            value: isRememberMe,
                            activeColor: Color.fromARGB(255, 255, 153, 0),
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ]),
                        Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.pink,
                              Colors.white,
                              Colors.blue,
                            ]),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 22),
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
class inputText extends StatelessWidget {
  final String label;
  final TextEditingController? typeController;
  final bool obscureText;
  final IconData icon;
  final IconData icon_off;
  final Function()? press;
  final Function(String)? paramsOnSave;
  final String? paramsValidator;
  const inputText({
    Key? key,
    required this.label,
    this.typeController,
    required this.obscureText,
    required this.icon,
    required this.icon_off,
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