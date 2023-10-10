import 'package:flutter/material.dart';

import 'package:flutter_doctor_app/components/doctor_tab.dart';

import 'package:flutter_doctor_app/models/doctor.dart';

import 'second_page.dart';

class TopDoctorsList extends StatelessWidget {
  const TopDoctorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
          },
          child: DoctorsTab(
            doctor: topDoctors[index],
          ),
        );
      },
    );
  }
}