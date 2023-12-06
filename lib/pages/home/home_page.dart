import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spotify_clone/widgets/home_widgets/albums.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  void ontTappedIndex(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.account_circle_rounded,
            size: 34,
            color: Colors.white,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.notification,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.history,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.setting,
                ),
              ),
            ],
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            Text(
              'Recently played',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Made for You',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('In New Year', style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),),
            Row(
              children: [
                Poster(),
                Poster(),
              ],
            ),
            Text(
              'Popular albums',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                  HomeAlbums(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontTappedIndex,
        currentIndex: selectedIndex,
        backgroundColor: const Color(0xff121212),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items:[
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.search),
              label: 'Search'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_sharp),
                label: 'Search'
            ),
          ],),
    );
  }
}
