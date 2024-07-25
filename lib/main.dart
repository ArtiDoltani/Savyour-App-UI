import 'package:flutter/material.dart';
import 'package:savyour_app/Screens/splash.dart';

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
      title: 'Savyour App',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          displayMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodyLarge: TextStyle(fontSize: 15,),
          // for dots
          bodySmall: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        )
      ),
      home: const SplashScreen());
  }
}

