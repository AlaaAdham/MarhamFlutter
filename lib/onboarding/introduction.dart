import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( // Wrap your PageView and SmoothPageIndicator in a Column
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                 Container(margin: EdgeInsets.fromLTRB(0,50,10, 0),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text("Your Heath",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        fontFamily: 'FredokOne',
                        
                        color:Color.fromARGB(151, 18, 92, 220)
                      ),),
                      Image.asset("assets/doctor2.jpg",
                      ),
                      SizedBox(height: 40.0),
                       ],
                  )
                )
                ,Container(
                  color: Colors.green,
                )
                ,Container(
                  color: Colors.blue,
                )
               
              ],
            ),
          ),
          
          
        ],
      ),
    );
  }
}
