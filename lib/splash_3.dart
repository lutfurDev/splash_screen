import 'package:flutter/material.dart';

class splashScreen3 extends StatefulWidget {
  const splashScreen3({Key? key}) : super(key: key);

  @override
  State<splashScreen3> createState() => _splashScreen3State();
}

class _splashScreen3State extends State<splashScreen3> {
  var _width = 200.0;
  var _height = 100.0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              color: Colors.red,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = 100.0;
                    _height = 200.0;
                  });
                },
                child: Text('Animated')),
          ],
        ),
      ),
    );
  }
}
