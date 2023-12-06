import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  Color color;
  Color textcolor;
  Color borderColor;
  String title;
  void Function() onTap;

  RegisterButton({
    super.key,
    required this.borderColor,
    required this.textcolor,
    required this.color,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
        width: 337,
        height: 49,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: borderColor)
        ),
        child: TextButton(
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: textcolor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),);
  }
}
