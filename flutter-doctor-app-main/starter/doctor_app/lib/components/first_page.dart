import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/components/app_bar_component.dart';
import 'package:flutter_doctor_app/components/grid_icons.dart';
import 'package:flutter_doctor_app/components/search_bar.dart';
import 'package:flutter_doctor_app/components/second_page.dart';
import 'package:flutter_doctor_app/components/doctor_tab.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppBarComponent(),
          SearchBar(),
        ],
      ),
    );
  }
}
