//import 'package:banned_akun/alasan_banned.dart';
//import 'package:banned_akun/berhasil_banding.dart';
import 'package:banned_akun/landing_page.dart';
//import 'package:banned_akun/takedown_curhatan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(398, 806),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
       
        home: LandingPage(),
        );
      }
    );
  }
}
