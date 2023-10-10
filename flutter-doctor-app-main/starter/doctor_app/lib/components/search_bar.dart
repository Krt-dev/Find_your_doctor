import 'package:flutter/material.dart';

class SearchingBar extends StatelessWidget {
  const SearchingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search doctor, medecines, etc.",
                  hintStyle: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/svg/Search.png',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
