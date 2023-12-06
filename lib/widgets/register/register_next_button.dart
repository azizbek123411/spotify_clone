import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  void Function() onTap;
   NextButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical:17,horizontal: 40),
        color: const Color(0xff535353),
        onPressed:onTap,
        child: const Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
