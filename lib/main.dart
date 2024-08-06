import 'package:banned_akun/info_takedown.dart';
import 'package:banned_akun/landing_page.dart';
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
      designSize:const  Size(398, 806),
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
       
        home: InfoTakedown(keadaan: true,),
        );
      }
    );
  }
}
