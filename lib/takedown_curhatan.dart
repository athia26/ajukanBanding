import 'dart:ui';

import 'package:banned_akun/alasan_banned.dart';
import 'package:banned_akun/landing_page.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TakedownCurhatan extends StatelessWidget {
  const TakedownCurhatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LandingPage()));
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 21.w.h,),
                ),
                Padding(
                   padding:  const EdgeInsets.only(left: 5.0),
                   child: Text(
                    "Kembali", 
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "Inter Bold",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Postingan Kamu Melanggar Panduan Komunitas", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontFamily: "Segoe Bold"
                ),
              ),
            ), 
        
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/bg.png'
                    ),
                  ),

                Positioned(
                  top: 50,
                  right: -20,
                  child: Image(
                    image: const AssetImage('assets/chatkanan.png'),
                    width: 150.w,
                    height: 56.h,
                    ),
                  ),
            
                 Positioned(
                  bottom: 50,
                  left: -20,
                  child: Image(
                    image: const AssetImage('assets/chatkiri.png'),
                    width: 150.w,
                    height: 56.h,
                    ),
                  ),
            
                Container(
                  width:358.w ,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xffe3e9f4),
                    borderRadius: BorderRadius.circular(19),
                    boxShadow: [
                      BoxShadow(
                       color: Colors.black.withOpacity(0.2),
                              spreadRadius: 3, 
                              blurRadius: 6,
                              offset: Offset(4, 5),
                      )
                    ]
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ceritaku Tentang Laptop Hero",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: "Inter Bold"
                          ),
                        ), 

                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "About Laptop Laptop ini...  Hasil kerja kerasnya ayah Hasil ngantuk-ngantuknya ayah jaga di toko produk kosmetik sekarang dia juga ada di ... ",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: "Inter"
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                
                  Positioned(
                  bottom: 80,
                  right: 25,
                  child: Image(
                    image: const AssetImage('assets/warningbawah.png'),
                    width: 63.w,
                    height: 57.h,
                  ),
                ),
              ],
            ),
        
            
        
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
              SizedBox(
                width: 320.w,
                child: Text(
                "Kami menghapus postingan kamu karena mengandung kata-kata kotor",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 22.sp,
                  color: const Color(0xff4C34E2),
                  fontFamily:"Segoe Bold"
                 ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: 320.w,
                  child: Text(
                    "Apabila merasa postingan kamu tidak mengandung kata kotor, kamu dapat mencoba untuk mengajukan banding",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Segoe",
                    ),
                  ),
                ),
              )
            ],
          ),
        
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                SizedBox(
                  width: 360.w,
                  height: 50.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(const Color(0xff4C34E2)), // Warna latar belakang
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Warna teks
                    ),
                    
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AlasanBanned()));
                    }, 
                    child: Text(
                      "Ajukan Banding",
                        style: TextStyle(
                          fontFamily: "Inter Bold",
                          fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                  child: SizedBox(
                    width: 360.w,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(const Color(0xff4C34E2)), // Warna latar belakang
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.white), // Warna teks
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(
                          color: Color(0xff4C34E2)
                          ),
                        ),
                      ),
                    ),
                      
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LandingPage()));
                      }, 
                      child: Text(
                        "Kembali",
                          style: TextStyle(
                            fontFamily: "Inter Bold",
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}