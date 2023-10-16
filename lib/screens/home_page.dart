import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_task/colors/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
          title: Text('Search Products',style: TextStyle(color: AppColors.mainColor,fontSize: 17),),centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: InkWell(
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new,color: AppColors.mainColor,)),
        ),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right: 30),
           child: Image.asset('assets/images/profile.png',width: 40,),
         ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey2,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: TextFormField(
                            controller: searchController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 12),
                              hintText: 'Plants',
                              hintStyle: TextStyle(color: AppColors.mainColor,fontSize: 13,fontWeight: FontWeight.w500),
                              prefixIcon: Icon(Icons.search,color: AppColors.secondaryColor,size: 17,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey2,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                       child: Icon(Icons.display_settings_outlined),
                      )
                    ],
                  ),
              SizedBox(height: 35,),
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            children: const [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.2,
                child: Tilee(),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.3,
                child: Tile(title: 'Snake Plant',subTitle: '',image: 'assets/images/snakePlant.png',imageWidth: 120.0,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.3,
                child: Tile(title: 'Lucky-jade-plant',subTitle: '',image: 'assets/images/luckyJadePlant.png',imageWidth: 108.0,),
              ),
              
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.3,
                child: Tile(title: 'Small Plant', subTitle: 'Super greens', image: 'assets/images/luckyJadePlant.png', imageWidth: 108.0)
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.3,
                child: Tile(title: 'peperomia Plant',subTitle: 'Super greens',image: 'assets/images/snakePlant.png',imageWidth: 120.0,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3.3,
                child: Tile(title: 'Snake Plant',subTitle: '',image: 'assets/images/snakePlant.png',imageWidth: 120.0,),
              ),

            ],
          )
            ],
          ),
        ),
      ),
    );
  }

}

class Tile extends StatelessWidget {
  final image;
  final title;
  final subTitle;
  final imageWidth;
  const Tile({required this.title,required this.subTitle, required this.image,required this.imageWidth,});

  @override
  Widget build(BuildContext context) {
    // Return the content of your Tile based on the index or other criteria.
    return InkWell(
      overlayColor: MaterialStatePropertyAll(Colors.transparent),
      onTap: (){
        Navigator.pushNamed(context, '/PlantsPage');
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white, // Set your desired color
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 13,right: 13,top: 13,bottom: 10),
          child: Column(
            children: [
                 Image.asset(image,width: imageWidth,),
                 SizedBox(height: 15,),
                 Align(
                     alignment: Alignment.centerLeft,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(title,style: GoogleFonts.inter(fontSize: 11.8,fontWeight: FontWeight.w700),),
                         SizedBox(height: 2,),
                         Text(subTitle,style: GoogleFonts.inter(fontSize: 9,color: AppColors.secondaryColor),),
                       ],
                     )),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$12.99',style: GoogleFonts.inter(fontSize: 13,fontWeight: FontWeight.w700),),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.mainColor,
                    child: Center(
                      child: Icon(Icons.heart_broken,color: AppColors.lightGrey2,size: 15,),
                    ),
                  )
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}

class Tilee extends StatelessWidget {

  const Tilee({super.key});

  @override
  Widget build(BuildContext context) {
    // Return the content of your Tile based on the index or other criteria.
    return Container(
      decoration: BoxDecoration(// Set your desired color
        borderRadius: BorderRadius.circular(10),
      ),
      child:Text('Found\n10 Results', style: TextStyle(color: AppColors.mainColor,fontSize: 27,fontWeight: FontWeight.w700)),

    );
  }
}

