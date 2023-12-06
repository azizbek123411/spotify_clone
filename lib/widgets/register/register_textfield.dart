import 'package:flutter/material.dart';
class RegisterTextfield extends StatelessWidget {
  const RegisterTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 51,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(6)
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(12),
        ),
      ),
    );
  }
}
