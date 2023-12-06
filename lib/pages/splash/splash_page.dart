import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/register/register_page.dart';

class Splashpage extends StatelessWidget {
  static const String id = 'splash';

  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register(),),);
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/spotify_logo.png",
                ),
                height: 200,
              ),
              CircularProgressIndicator(
                strokeWidth: 6,
                backgroundColor: Colors.green.shade300,
                color: Colors.green.shade900,
              )
            ],
          ),
        ),
      ),
    );
  }
}
