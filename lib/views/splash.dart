import 'dart:async';
import 'package:flutter/material.dart';

import 'package:e_farm/views/wraper.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Wrapper()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.white,
//      child: Icon(Icons.beach_access),
          child: Stack(
            children: <Widget>[
              Center(
                child: ClipOval(
                  child: Image(
                      height: MediaQuery.of(context).size.height / 4 -10,
                      width: MediaQuery.of(context).size.height / 4 -10,
                      fit: BoxFit.fill,
                      image: AssetImage('images/splash.jpg')),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClipPath(
                    child: Container(
                      color: Colors.green[900],
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                    ),
                    clipper: MyClipper(),
                  ),
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(180 / 360),
                    child: ClipPath(
                      child: Container(
                        color: Colors.green[900],
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                      ),
                      clipper: MyClipper(),
                    ),
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){

    var path = Path();
    path.lineTo(0.0, size.height);

    var firstControlPoint = Offset(size.width/6, size.height/8);
    var firstEndPoint = Offset(size.width/2, size.height/4);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width/2 + size.width/4, size.height/3);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> olderClipper) => false ;
}