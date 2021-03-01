import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sisi/pages/login_page.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/sisi/lib/pages/welcome_page.dart';
import 'package:sisi/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Color(0xFFFFA3B5),
        accentColor: Color(0xFFF8EDEB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vector.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Transform.rotate(
                angle: -pi/34.81625,
                child: Text(
                  'Sisi!',
                  style: TextStyle(
                    fontFamily: 'Jonathan',
                    fontSize: MediaQuery.of(context).size.width *0.15
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
