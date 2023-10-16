import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:linkedin_task/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.OnScreenbackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: InkWell(
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new,color: AppColors.mainColor,)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(Icons.shopping_cart_outlined,color: AppColors.mainColor,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/luckyJadePlant.png',width: 210,),

                    SizedBox(height: 25,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Lucky-jade-plant',style: GoogleFonts.inter(color: AppColors.mainColor,fontWeight: FontWeight.w700,fontSize: 28),),
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Plants make your life with minimal and happy\nlove the plants more and enjoy life.',style: GoogleFonts.inter(color: AppColors.secondaryColor,fontSize: 13),),
                    ),
                    SizedBox(height: 25,),

                  ],
                ),
              ),
            ),
            SizedBox(
              height:27,
            ),
            Container(
              padding: EdgeInsets.only(left: 35,right: 35,top: 35,bottom: 10),
                      height: 243,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                      ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.hourglass_bottom_outlined,color: AppColors.white,),
                          SizedBox(height: 8,),
                          Text('Height',style: GoogleFonts.inter(color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w600),),
                          SizedBox(height: 7,),
                          Text('30cm-40cm',style: GoogleFonts.inter(color: AppColors.white,fontSize: 11,fontWeight: FontWeight.w300),),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.hourglass_bottom_outlined,color: AppColors.white,),
                          SizedBox(height: 8,),
                          Text('Temprature',style: GoogleFonts.inter(color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w600),),
                          SizedBox(height: 7,),
                          Text('20\u00b0C to 25\u00b0C',style: GoogleFonts.inter(color: AppColors.white,fontSize: 11,fontWeight: FontWeight.w300),),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.hourglass_bottom_outlined,color: AppColors.white,),
                          SizedBox(height: 8,),
                          Text('Pot',style: GoogleFonts.inter(color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w600),),
                          SizedBox(height: 7,),
                          Text('Ciramic Pot',style: GoogleFonts.inter(color: AppColors.white,fontSize: 11,fontWeight: FontWeight.w300),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Price',style: GoogleFonts.inter(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w300)),
                            SizedBox(height: 5,),
                            Text('\$12.99',style: GoogleFonts.inter(color: AppColors.white,fontSize: 16,fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                          decoration: BoxDecoration(
                            color: AppColors.darkGreen2,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Center(
                            child: Text('Add to Cart',style: GoogleFonts.inter(color: AppColors.white,fontWeight: FontWeight.w600,fontSize: 17),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
                    )
          ],
        ),
      ),
    );
  }
}
