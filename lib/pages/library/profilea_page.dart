import 'package:flutter/material.dart';

import '../../widgets/settings_tile/tiles.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color(0xff121212),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: const Image(
                  image: AssetImage('assets/images/originallogo.png'),
                ),
                title: const Text(
                  'Your name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: const Text(
                  'View profile',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      0xffB3B3B3,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Tiles(title: 'Account', onTap: () {}),
            Tiles(title: 'Data server', onTap: () {}),
            Tiles(title: 'Language', onTap: () {}),
            Tiles(title: 'Playback', onTap: () {}),
            Tiles(title: 'Explict Content', onTap: () {}),
            Tiles(title: 'Devices', onTap: () {}),
            Tiles(title: 'Car', onTap: () {}),
            Tiles(title: 'Social', onTap: () {}),
            Tiles(title: 'Voice Assistant & Apps', onTap: () {}),
            Tiles(title: 'Storage', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
