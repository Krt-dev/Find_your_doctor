import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/components/app_bar_component.dart';
import 'package:flutter_doctor_app/components/grid_icons.dart';
import 'package:flutter_doctor_app/components/search_bar.dart';
import 'package:flutter_doctor_app/components/second_page.dart';
import 'package:flutter_doctor_app/components/doctor_tab.dart';
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
    final List<Map> data = [
      {
        'id': 1,
        'link': 'assets/svg/img-consultation.svg',
        'title': 'Consultation'
      },
      {'id': 2, 'link': 'assets/svg/img-dental.svg', 'title': 'Dental'},
      {'id': 3, 'link': 'assets/svg/img-heart.svg', 'title': 'Heart'},
      {'id': 4, 'link': 'assets/svg/img-hospital.svg', 'title': 'Hospital'},
      {'id': 5, 'link': 'assets/svg/img-medicine.svg', 'title': 'Medecines'},
      {'id': 6, 'link': 'assets/svg/img-physician.svg', 'title': 'Physician'},
      {'id': 7, 'link': 'assets/svg/img-skin.svg', 'title': 'Skin'},
      {'id': 8, 'link': 'assets/svg/img-surgeon.svg', 'title': 'Surgeon'},
    ];
    return Column(children: [
      const AppBarComponent(),
      const Padding(
        padding: EdgeInsets.only(top: 24),
        child: Material(child: SearchingBar()),
      ),
      SizedBox(
        height: 300,
        width: 500,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: Svg(data[index]['link']),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    data[index]['title'],
                    style: GoogleFonts.lato(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            );
          },
        ),
      )
    ]);
  }
}
