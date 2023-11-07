import 'package:flutter/material.dart';
import 'package:topicos/screens/conversor_screen.dart';
import 'package:topicos/screens/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/temp" : (context) => ConversorScreen(),

      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}