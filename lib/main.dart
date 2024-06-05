import 'package:flutter/material.dart';
import 'Screens/Welcome_Screen.dart';

// Education Application

void main(){
  runApp(const EducationApp());
}

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightBlue
      ),
      home: Scaffold(
        body: Welcome_Screen(),
      ),
    );
  }
}
