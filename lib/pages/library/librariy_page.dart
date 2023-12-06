import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spotify_clone/pages/library/profilea_page.dart';

import '../../widgets/library_tile.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff121212),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profilepage(),
                ),
              );
            },
            child: const CircleAvatar(
              backgroundColor: Color(0xff121212),
              child: Icon(
                Icons.account_circle_rounded,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          title: const Text(
            'Your Library',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 26,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            // indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white)),
            isScrollable: true,
            tabs: const [
              Tab(
                child: Text(
                  'Playlists',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Artists',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Albums',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Podcast & shows',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xff121212),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recently played',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyLight.category,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const Playlist(),
              const Playlist(),
              const Playlist(),
              const Playlist(),
              const Playlist(),
              const Playlist(),
              const Playlist(),
              const Playlist(),
              const Playlist(),
            ],
          ),
        ),
      ),
    );
  }
}
