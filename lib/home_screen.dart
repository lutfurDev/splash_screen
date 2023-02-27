import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool isleft = false;

  leftRight() {
    setState(() {
      isleft = !isleft;
    });
  }

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100), () {
      leftRight();
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  alignment: isleft ? Alignment.topCenter : Alignment.topRight,
                  child: Text(
                    'payday',
                    style: TextStyle(fontSize: 20),
                  ),
                  curve: Curves.easeInOut,
                ),
              ),
            ],
          )),
    );
  }
}
