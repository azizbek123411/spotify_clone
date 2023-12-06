import 'package:flutter/material.dart';

class HomeAlbums extends StatelessWidget {
  const HomeAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10,right: 10,
          bottom: 5),
          height: 155,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/album_cover.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Text(
          'Eminem,2Pac,\n Ed Sheeran ',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(
                0xffB3B3B3,
              ),),
        ),
      ],
    );
  }
}
class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10,right: 10,
              bottom: 5),
          height: 153,
          width: 153,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/poster.jpg'),
              fit: BoxFit.cover
            ),
          ),
        ),
        const Text('Your Artists Revealed',style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),)
      ],
    );
  }
}

