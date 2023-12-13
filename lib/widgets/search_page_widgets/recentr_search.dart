import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: const Image(
          fit: BoxFit.cover,
          height: 60,
          width: 50,
          image: AssetImage('assets/images/hozier.jpeg'),
        ),
      ),
      title: const Text(
        "Hozier",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      subtitle: Text(
        'Artist',
        style: TextStyle(
          color: Colors.grey.shade300,
          fontSize: 12,
        ),
      ),
    );
  }
}
