import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spotify_clone/pages/home/home_page.dart';
import 'package:spotify_clone/pages/library/librariy_page.dart';
import 'package:spotify_clone/pages/search/search_page.dart';

class MainPage extends StatefulWidget {
  static const String id = 'main';

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  PageController controller = PageController();
  late int selectedIndex;

  @override
  void initState() {
    // TODO :implement initState
    super.initState();
    controller = PageController();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        onPageChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        controller: controller,
        children: const [HomePage(), SearchPage(), LibraryPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int itemIndex) {
          setState(() {
            selectedIndex = itemIndex;
            controller.animateToPage(
              itemIndex,
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastEaseInToSlowEaseOut,
            );
          });
        },
        currentIndex: selectedIndex,
        backgroundColor: const Color(0xff121212),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_sharp),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
