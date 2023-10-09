import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 24, top: 62),
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Svg('assets/svg/icon-burger.svg'))),
            ),
            Container(
              margin: const EdgeInsets.only(left: 260, top: 62),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(5),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/svg/profile.png')),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Row(
            children: [
              Text(
                "Find",
                style:
                    GoogleFonts.lato(fontSize: 34, fontWeight: FontWeight.w400),
              ),
              Text(
                " your doctor",
                style: GoogleFonts.lato(
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(160, 164, 168, 1)),
              )
            ],
          ),
        )
      ],
    );
  }
}
