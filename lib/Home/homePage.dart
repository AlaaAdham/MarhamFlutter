// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Home/category.dart';
import 'package:flutter_application_4/Home/doctor.dart';
import 'package:lottie/lottie.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

final List _categories = [
  'chest ',
  'cat2',
  'cat1',
  'cat2',
  'cat1',
  'cat2',
  'cat1',
  'cat2'
];
final List _doctors = ['dr1', 'dr2', 'dr1', 'dr2', 'dr1', 'dr2'];

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //app bar
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'batool kh', //change
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    //profile pic
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset(
                        'assets/tooth.png', //change
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15.0),

              //card how do u fell
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    children: [
                      //pic
                      Container(
                        height: 200,
                        width: 200,
                        child: Lottie.asset('aseets/gif/phone.json'),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                    ],
                  ),
                ),
              ),
              //text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How do you feel?!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Fill out your medical card right now',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'how we can help you?',
                          hintStyle: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              //category
              Container(
                height: 150.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return category(
                          icon: 'assets/tooth.png',
                          categoryName: _categories[index]);
                    }),
              ),

              SizedBox(
                height: 25,
              ),
              //doc
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('doctor list',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )),
                    Text(
                      'see all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //doctors
              Container(
                height: 335.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return doctor(
                          doctorPic: 'assets/doctor2.jpg',
                          doctorRate: '5.0',
                          doctorName: 'doctorName',
                          doctorCat: 'doctorCat');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
