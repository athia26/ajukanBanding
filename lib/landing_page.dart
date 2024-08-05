import 'package:banned_akun/info_takedown.dart';
import 'package:banned_akun/takedown_curhatan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TakedownCurhatan()));
              }, 
            
            child: const Text(
              "Take Down Curhatan"
            )),
      
            ElevatedButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const InfoTakedown(keadaan: false)));
          }, 
        
        child: const Text(
          "Info Take Down"
        )),
          ],
        ),
      
        
      ),
    );
  }
}