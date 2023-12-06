import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff131313),
            ),
            hintText: 'Artists, songs or podcasts',
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff131313))),
      ),
    );
  }
}
