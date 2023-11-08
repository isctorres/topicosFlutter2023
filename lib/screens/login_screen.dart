import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: .7,
            image: AssetImage('assets/fondo.jpeg')
          )
        ),
        child: const Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 320,
              child: Image(
                width: 350,
                image: AssetImage('assets/titulo.png')
              )
            )
          ],
        ),
      ),
    );
  }
}