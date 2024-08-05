import 'dart:ui';

import 'package:banned_akun/alasan_banned.dart';
import 'package:banned_akun/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LandingPage()));
                },
                child: const Icon(Icons.arrow_back_ios)),
                 const Padding(
                   padding:  EdgeInsets.only(left: 8.0),
                   child: Text(
                    "Kembali", 
                    style: TextStyle(
                    fontFamily: "Inter Bold",
                               ),),
                 ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Postingan Kamu Melanggar Panduan Komunitas", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.sp,
                fontFamily: "Segoe Bold"
              ),), 
        
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/bg.png',
                    // width:400.w,
                    // height: 400.h,
                    ),
                    
                    ),
            
                Container(
                  width:358.w ,
                  height: 190.h,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffE1E0E0).withOpacity(0.24),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
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
                              "About Laptop Laptop ini... Hasil kerja kerasnya ayah Hasil ngantuk-ngantuknya ayah jaga di toko produk kosmetik sekarang dia juga ada di ... ",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: "Inter"
                              ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            
                 Positioned(
                  top: 40,
                  right: -20,
                  child: Image(
                    image: AssetImage('assets/chatkanan.png'),
                    width: 150.w,
                    height: 56.h,
            
                    ),
                  ),
            
                 Positioned(
                  bottom: 40,
                  left: -20,
                  child: Image(
                    image: AssetImage('assets/chatkiri.png'),
                    width: 150.w,
                    height: 56.h,
                    ),
                  ),
            
                  Positioned(
                  bottom: 60,
                  right: 25,
                  child: Image(
                    image: AssetImage('assets/warningbawah.png'),
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
                  fontSize: 20.sp,
                  color: Color(0xff4C34E2),
                  fontFamily:"Segoe Bold"
                 ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: 300.w,
                  child: Text(
                    "Apabila merasa postingan kamu tidak mengandung kata kotor, kamu dapat mencoba untuk mengajukan banding",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
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
                  width: 385.w,
                  height: 53.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xff4C34E2)), // Warna latar belakang
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Warna teks
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AlasanBanned()));
                    }, child: 
                    Text("Ajukan Banding",
                    style: TextStyle(
                      fontFamily: "Inter Bold",
                      fontSize: 20.sp,
                    ),
                    
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                  child: SizedBox(
                    width: 385.w,
                    height: 53.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Color(0xff4C34E2)), // Warna latar belakang
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.white), // Warna teks
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          color: Color(0xff4C34E2)
                        )
                      ))
                    ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                      }, child: 
                      Text("Kembali",
                        style: TextStyle(
                      fontFamily: "Inter Bold",
                      fontSize: 20.sp,
                    ),
                      )),
                  ),
                ),
              ],
            ),
          )
        
             
        
            
        
        
        
          ],
        ),
      ),
    );
  }
}