import 'package:flutter/material.dart';
import 'package:linkedin_task/routes/routes.dart';
import 'package:linkedin_task/screens/on_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkedIn Task',
      onGenerateRoute: Routes().onGenerateRoute,
      initialRoute: '/OnScreen',
    );
  }
}

