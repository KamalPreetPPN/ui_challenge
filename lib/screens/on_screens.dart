import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:linkedin_task/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnScreens extends StatefulWidget {
  const OnScreens({super.key});

  @override
  State<OnScreens> createState() => _OnScreensState();
}

class _OnScreensState extends State<OnScreens> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: AppColors.OnScreenbackground,
      appBar: AppBar(
        elevation: 0,
        leading: Text(''),
        backgroundColor: Colors.transparent,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20,top: 20),
          child: InkWell(
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
              onTap: (){
                Navigator.pushNamed(context, '/HomePage');
              },
              child: Text('Skip',style: GoogleFonts.inter(color: AppColors.mainColor,fontSize: 16,fontWeight: FontWeight.w500),)),
        )],
      ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Center(
               child: Column(
                 children: [
                   Image.asset('assets/images/snakePlant.png',width: 320,),
                   SizedBox(height: 20,),
                   new DotsIndicator(
                     dotsCount: 3,
                     position: 0,
                     decorator: DotsDecorator(
                       color: Color.fromRGBO(0, 0, 0, 0.30), // Inactive color
                       activeColor: AppColors.lightGreen,
                       size: Size.square(10),
                     ),
                   ),
                   SizedBox(height: 25,),
                   RichText(text: TextSpan(
                     children: [
                       TextSpan(text: 'Enjoy your\nLife with ',style: GoogleFonts.inter(fontSize: 35,color: AppColors.mainColor)),
                       TextSpan(text: 'Plants',style: GoogleFonts.inter(fontSize: 40,fontWeight: FontWeight.w800,color: AppColors.mainColor)),
                     ]
                   )),
                   SizedBox(height: 35,),
                   InkWell(
                     overlayColor: MaterialStatePropertyAll(Colors.transparent),
                     onTap: (){
                       Navigator.pushNamed(context, '/HomePage');
                     },
                     child: CircleAvatar(
                       radius: 30,
                       backgroundColor: AppColors.lightGreen,
                       child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 30,),
                     ),
                   )
                 ],
               ),
             ),
           )
         ],
       ),
     ),
    );
  }
}
