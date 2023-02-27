import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:splash_screen/home_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  bool istop = false;

  ismove() {
    setState(() {
      istop = !istop;
      double sixe=istop?30:70;
    });
  }
  double _width = 100; // the width at the beginning
  double _height = 100; // the height at the beginning
  Color _color = Colors.yellow; // the color at the beginning

  // This function is used to start the animation
  // It will be triggered when the floating action button is pressed
  void _start() {
    setState(() {
      _width = 300;
      _height = 300;
      _color = Colors.red;
    });
  }



  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), (){
      ismove();
      _start();
    });

    Future.delayed(Duration(seconds: 3), (){
   Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen(),));
    });



    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          height: _height,
          width: _width,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 2),
                  alignment: istop ? Alignment.topCenter : Alignment.center,
                  child: Icon(
                    Icons.h_mobiledata,
                    size:   istop ? 50 : 100,
                  ),
                curve: Curves.easeOutQuad,

                // width:  istop?200:100,
                // height:  istop?200:100,


      ),


                // onEnd: () {
                //   setState(() {
                //     _width = _width == 100 ? 300 : 100;
                //     _height = _height == 100 ? 300 : 100;
                //     //_color = _color == Colors.yellow ? Colors.red : Colors.yellow;
                //   });
                // },

                //),

              // Center(
              //     child: ElevatedButton(
              //         onPressed: () {
              //           ismove();
              //         },
              //         child: Text('Click')))
            ],
          )),
    );
  }
}
