import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Contact Your Doctor any Time YOU need',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,),),
             Lottie.asset('gif/page4.json'),
        ],
      ),
        //https://lottie.host/4a35e7da-4174-4552-acb7-a7eae423e62d/Yf1oDlw7jx.json

    );
  }
}