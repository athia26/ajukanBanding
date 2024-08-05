import 'package:banned_akun/landing_page.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BerhasilBanding extends StatelessWidget {
  const BerhasilBanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 200.h, bottom: 107.h),
              child: Center(
                child: Image.asset('assets/centang.png', 
                width: 298.w,
                height: 298.h,),
                
              
                
              ),
            ),
        
            Column(
              children: [
                Text(
                  "Berhasil Mengirimkan Banding",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: "Segoe Bold",
                    color: Color(0xff4C34E2)
                  ),),
                  
                  
                  Container(
                    padding: EdgeInsets.only(top: 15.w),
                    width: 282.w,
                    child: Text(
                      "Kamu akan diberitahu jika bandingmu mendapat balasan lebih lanjut",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: "Segoe"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
              ],
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 23.0),
              child: SizedBox(
                    width: 385.w,
                    height: 53.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Color(0xff4C34E2)), // Warna latar belakang
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Warna teks
                      ),
                     onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                     }, child: 
                      Text("Selesai",
                      style: TextStyle(
                        fontFamily: "Inter Bold",
                        fontSize: 20.sp
                      ),)),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}