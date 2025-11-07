// import 'package:flutter/material.dart'; 
// import 'screens/splash_screen.dart'; 
 
// void main() {   runApp(MyApp()); 
// } 
 
// class MyApp extends StatelessWidget { 
//   @override 
//   Widget build(BuildContext context) {     return MaterialApp( 
//       debugShowCheckedModeBanner: false, title: 'Splash Demo', home: SplashScreen(), 
//     ); 
//   } 
// } 

// main.dart
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AnkoleFreshApp());
}

class AnkoleFreshApp extends StatelessWidget {
  const AnkoleFreshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ankole Fresh',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Inter',
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}