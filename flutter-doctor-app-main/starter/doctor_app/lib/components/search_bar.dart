import 'package:flutter/material.dart';

class SearchingBar extends StatelessWidget {
  const SearchingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search doctor, medecines, etc.",
                    floatingLabelStyle: TextStyle(fontSize: 14)),
              ),
            ),
          ),
          Image.asset('assets/svg/Search.png'),
        ],
      ),
    );
  }
}
