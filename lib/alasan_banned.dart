import 'package:banned_akun/berhasil_banding.dart';
import 'package:banned_akun/takedown_curhatan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlasanBanned extends StatelessWidget {
  const AlasanBanned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      backgroundColor: const Color( 0xff4C34E2),
      leading: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const TakedownCurhatan()));
          },
          child: const Icon(
            Icons.arrow_back, 
              color: Colors.white,),
        ),
      ),
      ),

      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 170.h,
                    color:  const Color(0xff4C34E2),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Berikan alasan banding kamu ", 
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Segoe Bold",
                                color: Colors.white
                              ),
                            ), 
                          SizedBox(
                            width: 360.w,
                            child: Text(
                              "jika merasa postingan tidak melanggar pedoman komunitas:", 
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Segoe",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ), 
              
                  Positioned(
                    top: 100,
                    bottom: -400,
                    left: 37.w,
                    right: 37.w,
                    child: 
                      Container(
                        width: 356.w,
                        height: 450,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 4, 
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ]
                        ),
                        
                        child: TextField(
                          maxLines: 30,
                          
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                            hintText: "Alasan......",
                            hintStyle: TextStyle(
                              fontFamily: "Segoe Italic", 
                              fontSize: 20.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
              Padding(
                padding: EdgeInsets.only(top: 420.h),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const BerhasilBanding()));
                        }, 
                        child: Text(
                          "Kirim Banding",
                            style: TextStyle(
                              fontFamily: "Segoe Bold",
                              fontSize: 18.sp
                          ),
                        )
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const TakedownCurhatan()));
                          }, child: Text(
                            "Kembali",
                              style: TextStyle(
                                fontFamily: "Segoe Bold",
                                fontSize: 18.sp
                            ),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}