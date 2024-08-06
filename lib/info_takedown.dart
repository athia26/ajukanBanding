import 'package:banned_akun/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoTakedown extends StatelessWidget {
  final bool keadaan;

  
  const InfoTakedown({super.key, required this.keadaan});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
    appBar: AppBar(
    automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LandingPage()));
                },
                child: const Icon(Icons.arrow_back_ios)),
                 const Padding(
                   padding: EdgeInsets.only(left: 8.0),
                   child: Text(
                    "Kembali", 
                    style: TextStyle(
                    fontFamily: "Inter Bold",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Text(
                  keadaan 
                  ? "Pengajuan banding kamu" 
                  : "Pengajuan banding ditolak", 
                  style: TextStyle(
                    fontFamily: "Segoe Bold",
                    fontSize: 26.sp,
                    color: const Color(0xff4C34E2)
                  ),
                ),
            
                SizedBox(
                  width: 351.w,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                       keadaan 
                      ? "terkait postingan yang dihapus \n“Aku ingin curhat”...." 
                      : "Kami telah meninjau postingan kamu dan menghapusnya karena melanggar pedoman komunitas tentang kata-kata kotor dan kekerasan", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Segoe",
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
            
                Stack(
                  alignment: Alignment.center,
                  children:[ Image(image: 
                  keadaan
                    ? const AssetImage("assets/terima.png")
                    : const AssetImage("assets/tolak.png"),
                    width: 260.w,
                    height: 260.h,
                    ),
            
                    Positioned(
                      bottom: 5,
                      child: 
                    Center(
                      child: Text(
                        keadaan 
                          ? "Diterima"
                          : "Ditolak",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26.sp,
                            fontFamily: "Inter Bold",
                            color: const Color(0xff7591FF),
                          ),
                        ),
                      ),
                    ),
                  ]
                ), 
            
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 340.w,
                        child: Text(
                          keadaan 
                            ? "Mohon maaf atas kesalahan penghapusan postingan kamu.."
                            : "Postingan kamu terdeteksi melanggar pedoman komunitas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26.sp,
                              fontFamily: "Segoe Bold", 
                              color: const Color(0xff4C34E2),
                          ),
                        ),
                      ),
                            
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        width: 365.w,
                        child: Text(
                          keadaan
                            ? "Postingan kamu kini telah ditampilkan kembali. Terima kasih atas pengajuan banding yang dilakukan"
                            : "Terima kasih telah mengajukan peninjauan. Kami tidak dapat mengembalikan postingan kamu", 
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "Segoe",
                              color: const Color(0xff484848)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            
                SizedBox(
                  width: 360.w,
                  height: 50.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4C34E2),
                      foregroundColor: Colors.white
                    ),

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LandingPage()));
                    }, 

                    child: Text(
                      "Kembali", 
                      style: TextStyle(
                        fontFamily: "Inter Bold", 
                        fontSize: 18.sp
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}