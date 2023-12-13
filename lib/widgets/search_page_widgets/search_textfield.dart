import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
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

    return Row(
      children: [
        Container(
          width: tapped ? 390 : 300,
          decoration: BoxDecoration(
            color:
                tapped ? Colors.white : Colors.grey.shade300.withOpacity(0.1),
            borderRadius: BorderRadius.circular(tapped ? 5 : 10),
          ),
          child: TextField(
            onTap: (){
              toTap();
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 14),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: tapped ? const Color(0xff131313) : Colors.white54,
              ),
              hintText: 'Artists, songs or podcasts',
              hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: tapped ? const Color(0xff131313) : Colors.white54),
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
    );
  }
}
