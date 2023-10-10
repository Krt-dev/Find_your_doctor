import 'package:flutter/material.dart';

import 'package:flutter_doctor_app/constants.dart';

import 'package:flutter_doctor_app/models/doctor.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsTab extends StatelessWidget {
  const DoctorsTab({Key? key, this.doctor}) : super(key: key);

  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, top: 10),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'assets/images/${doctor!.doctorPicture}',
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/${doctor!.doctorPicture}',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: doctor!.doctorName,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        doctor!.doctorName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold,color: const Color(0xff404345)),
                      ),
                    ),
                  ),
                  Text(
                    '${doctor!.doctorSpecialty} • ${doctor!.doctorHospital}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.sourceSans3(fontSize: 14,color: const Color(0xffAAAAAA)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 136,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10),
                          child: Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 16,
                                initialRating: double.parse(
                                  doctor!.doctorRating,
                                ),
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.zero,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: kYellowColor,
                                ),
                                onRatingUpdate: (rating) {
                                  debugPrint(rating.toString());
                                },
                                unratedColor: kGreyColor600,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '(${doctor!.doctorNumberOfPatient})',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: doctor!.doctorIsOpen
                                ? kGreenLightColor
                                : kRedLightColor,
                          ),
                          child: Text(
                            doctor!.doctorIsOpen ? 'Open' : 'Close',
                            style:
                                Theme.of(context).textTheme.titleSmall!.copyWith(
                                      color: doctor!.doctorIsOpen
                                          ? kGreenColor
                                          : kRedColor,
                                    ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}