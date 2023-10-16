import 'package:flutter/material.dart';
import 'package:linkedin_task/screens/on_screens.dart';
import 'package:linkedin_task/screens/details_screen.dart';
import '../screens/home_page.dart';

class Routes{

  Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){

      case '/OnScreen' : return MaterialPageRoute(builder: (context)=>OnScreens());

      case '/PlantsPage' :

        return MaterialPageRoute(builder: (context)=>DetailsScreen());

      case '/HomePage' : return MaterialPageRoute(builder: (context)=>HomePage());

      default : return MaterialPageRoute(builder: (context)=>OnScreens());

    }

  }

}


