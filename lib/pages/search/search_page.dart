import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spotify_clone/widgets/search_page_widgets/recentr_search.dart';

import '../../widgets/search_page_widgets/top_genre_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    void toTap() {
      setState(() {
        tapped = false;
      });
    }

    void toCancel() {
      setState(() {
        tapped = true;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: tapped
          ? AppBar(
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyLight.camera,
                      color: Colors.white,
                    ))
              ],
              title: const Text(
                'Search',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  width: tapped ? 390 : 300,
                  decoration: BoxDecoration(
                    color: tapped
                        ? Colors.white
                        : Colors.grey.shade300.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(tapped ? 5 : 10),
                  ),
                  child: TextField(
                    onTap: () {
                      toTap();
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 14),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color:
                            tapped ? const Color(0xff131313) : Colors.white54,
                      ),
                      hintText: 'Artists, songs or podcasts',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: tapped
                              ? const Color(0xff131313)
                              : Colors.white54),
                    ),
                  ),
                ),
                SizedBox(
                  width: tapped ? 0 : 20,
                ),
                tapped
                    ? const SizedBox()
                    : TextButton(
                        onPressed: () {
                          toCancel();
                        },
                        child: Text(
                          tapped ? "" : "Cancel",
                          style: TextStyle(color: Colors.grey.shade300),
                        ),
                      )
              ],
            ),
           const SizedBox(
              height: 20,
            ),
            tapped ? const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Your top genres',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopGenre(),
                      TopGenre(),
                    ],
                  ),
                  Text(
                    'Popular podcast categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopGenre(),
                      TopGenre(),
                    ],
                  ),
                  Text(
                    'Browse all',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            TopGenre(),
                            TopGenre(),
                          ]),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            TopGenre(),
                            TopGenre(),
                          ]),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            TopGenre(),
                            TopGenre(),
                          ]),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            TopGenre(),
                            TopGenre(),
                          ]),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            TopGenre(),
                            TopGenre(),
                          ]),
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            TopGenre(),
                            TopGenre(),
                          ]),
                    ],
                  )
                ],
              ),
            )
                :const SingleChildScrollView(
              child: Column(
                children: [
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                  RecentPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
