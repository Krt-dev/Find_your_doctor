import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/components/data.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class GridIcons extends StatelessWidget {
  const GridIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 350,
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
                          image: Svg(data[index]['link']), fit: BoxFit.cover)),
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
    );
  }
}
