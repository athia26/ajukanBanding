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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                },
                child: const Icon(Icons.arrow_back_ios)),
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Text(
                  keadaan 
                  ? "Pengajuan banding kamu" 
                  : "Pengajuan banding ditolak", 
                  style: TextStyle(
                    fontFamily: "Segoe Bold",
                    fontSize: 26.sp,
                    color: Color(0xff4C34E2)
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
                      style: TextStyle(
                        fontFamily: "Segoe",
                        fontSize: 19.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            
                Stack(
                  alignment: Alignment.center,
                  children:[ Image(image: 
                  keadaan
                    ? AssetImage("assets/terima.png", )
                    : AssetImage("assets/tolak.png"),
                    width: 298.w,
                    height: 298.h,
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
                            color: Color(0xff7591FF),
                          ),
                        ),
                      ),
                    ),
                  ]
                ), 
            
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 320.w,
                        child: Text(
                          keadaan 
                            ? "Mohon maaf atas kesalahan penghapusan postingan kamu.."
                            : "Postingan kamu terdeteksi melanggar pedoman komunitas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontFamily: "Segoe Bold", 
                              color: Color(0xff4C34E2)
                            ),
                        ),
                      ),
                            
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        width: 370.w,
                        child: Text(
                          keadaan
                            ? "Postingan kamu kini telah ditampilkan kembali. Terima kasih atas pengajuan banding yang dilakukan"
                            : "Terima kasih telah mengajukan peninjauan. Kami tidak dapat mengembalikan postingan kamu", 
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: "Segoe",
                              color: Color(0xff484848)
                            ),
                        ),
                      )
                    ],
                  ),
                ),
            
                SizedBox(
                  width: 385.w,
                  height: 53.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4C34E2),
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingPage()));
        
                    }, 
                    child: Text(
                      "Kembali", 
                      style: TextStyle(
                        fontFamily: "Inter Bold", 
                        fontSize: 20.sp
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