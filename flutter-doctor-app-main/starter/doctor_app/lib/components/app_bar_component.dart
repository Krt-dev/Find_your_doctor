import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

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
                      image: Svg('assets/svg/icon-burger.svg'))),
            ),
            Container(
              margin: const EdgeInsets.only(left: 260, top: 62),
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(5),
              ),
              child: Image.asset('assets/svg/profile.png'),
            )
          ],
        ),
      ],
    );
  }
}
