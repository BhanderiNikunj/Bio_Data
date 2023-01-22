import 'package:bio_data/PersonalDetail.dart';
import 'package:bio_data/PrintPage.dart';
import 'package:bio_data/familyDetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Personal(),
        'family':(context) => Family(),
        'print':(context) => Print(),
      },
    ),
  );
}
