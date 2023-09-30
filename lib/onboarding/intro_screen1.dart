import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('What is New in Our App?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,),),
          Lottie.asset('assets/gif/page1.json'),
        ],
      ),

    );
  }
}