
import 'package:flutter/material.dart';

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
