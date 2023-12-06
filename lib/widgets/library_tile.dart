import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(300),
        child: const Image(
          image: AssetImage('assets/images/download.jpeg'),
          height: 70,
          fit: BoxFit.cover,
        ),
      ),
      title: const Text(
        'Ed Sheeran',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      subtitle: const Text(
        'Artist',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Color(0xffB3B3B3),
        ),
      ),
    );
  }
}
