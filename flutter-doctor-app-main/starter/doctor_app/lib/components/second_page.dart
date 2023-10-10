import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Container(
               height: 24,
               width: 24,
               decoration: const BoxDecoration(
               image: DecorationImage(
               image: Svg('assets/svg/icon-back.svg'),
              ),
             )
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                     height: 24,
                     width: 24,
                     decoration: const BoxDecoration(
                     image: DecorationImage(
                     image: Svg('assets/svg/icon-bookmark.svg'),
                    ),
                   )
                  ),
          ),
        ]
      ),
      body: Column(
        children: [
          Image.asset('assets/images/img-men-01.png'),
          Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Padding(
            padding: const EdgeInsets.only(top:1),
            child: Row(
              children: [
                Text(
                  "dr. Gilang Segara Bening",
                  style:
                      GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
                ), 
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 15),
          child: Padding(
            padding: const EdgeInsets.only(top:0),
            child: Row(
              children: [
                Text(
                  "Heart  ●  Persahabatan Hospital",
                  style:
                      GoogleFonts.lato(
                      fontSize: 14,
                      color: const Color.fromRGBO(160, 164, 168, 1)
                      ),
                ), 
              ],
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(left: 24, top: 15),
          child: Padding(
            padding: const EdgeInsets.only(top:0),
            child: Row(
              children: [
                Text(
                  "dr. Gilang is one of the best doctors in the\nPersahabatan Hospital. He has saved more than\n1000 patients in the past 3 years. He has also\nreceived many awards from domestic and\nabroad as the best doctors. He is available on\na private or schedule. ",
                  style:
                      GoogleFonts.sourceSans3(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromRGBO(160, 164, 168, 1)
                      ),
                ), 
              ],
            ),
          ),
        ),
        const SizedBox(
        height: 16,
        ),
        IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.only(left:39.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("Experience", 
                    style: GoogleFonts.lato(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(height: 8,),
                    Row(children: [
                      Text(
                        "3",
                        style: GoogleFonts.sourceSans3(
                        fontSize: 24,
                        color:Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9.0, left: 2),
                        child: Text(
                        "yr",
                        style: GoogleFonts.sourceSans3(fontSize: 14),
                        ),
                      ),
                    ],)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(height: 54, width: 0.5, color: const Color(0xffCACCCF),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 2),
                  child: Column(
                    children: [
                      Text("Patient", 
                      style: GoogleFonts.lato(fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(height: 8,),
                    Row(children: [
                      Text(
                        "1221",
                        style: GoogleFonts.sourceSans3(
                        fontSize: 24,
                        color:Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9.0, left: 2),
                        child: Text(
                        "ps",
                        style: GoogleFonts.sourceSans3(fontSize: 14),
                        ),
                      ),
                    ],)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(height: 54, width: 0.5, color: const Color(0xffCACCCF),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 2),
                  child: Column(
                    children: [
                      Text("Rating", 
                      style: GoogleFonts.lato(fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(height: 8,),
                    Row(children: [
                      Text(
                        "5.0",
                        style: GoogleFonts.sourceSans3(
                        fontSize: 24,
                        color:Colors.blue),
                      ),
                     
                    ],)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
        height: 8,
        ),
      const SizedBox(
        width: 4,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xff4485FD),
                            image: const DecorationImage(
                              image: Svg(
                                'assets/svg/icon-chat.svg',
                                size: Size(
                                  36,
                                  36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(right: 16, top: 25),
                         child: Container(
                                         height: 56,
                                         width: MediaQuery.of(context).size.width - 104,
                                         decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(16),
                                                       color: const Color(0xff00CC6A),
                                                                  ),
                          child: Center(
                          child: Text(
                            'Make an Appoinment',
                            style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
                                            )
                                             )
                                           ),
                       )
                    ]
                  ),
                ),
                ]
      )
    );
  }
}