import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/components/app_bar_component.dart';
import 'package:flutter_doctor_app/components/grid_icons.dart';
import 'package:flutter_doctor_app/components/list_builder.dart';
import 'package:flutter_doctor_app/components/search_bar.dart';
import 'package:flutter_doctor_app/components/second_page.dart';
import 'package:flutter_doctor_app/components/doctor_tab.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        const AppBarComponent(),
        const Padding(
          padding: EdgeInsets.only(top: 24),
          child: Material(child: SearchingBar()),
        ),
        const GridIcons(),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              Text("Top Doctors",
              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left:193.0, top: 10),
                child: Text("View all",
                style: GoogleFonts.lato(fontSize: 11, fontWeight: FontWeight.bold, color: const Color(0xff4485FD)),),
              )
            ],
          ),
        ),
        const SizedBox(width: 400, height:500, child: TopDoctorsList()),
      ]
      ),
    );
  }
}
