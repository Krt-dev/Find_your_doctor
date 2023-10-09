import 'package:flutter/material.dart';

class SearchingBar extends StatelessWidget {
  const SearchingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter Name',
              hintText: 'Enter Your Name')),
    );
  }
}
