import 'package:flutter/material.dart';
class TopGenre extends StatelessWidget {
  const TopGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,bottom: 20),
      height: 109,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image:const  DecorationImage(
          image: AssetImage('assets/images/search_cover.jpg'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
