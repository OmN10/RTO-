import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rto_projects/view/onboaeding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color.fromARGB(255, 37, 103, 209), Colors.lightBlue],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.sizeOf(context).height / 4.5,
              ),
              child: Image.asset('assets/rto_splash.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height / 15,
              ),
              child: Center(
                child: Text(
                  "Road Master | Driving Lesson",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.78,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.41,
                ),
                child: Image.asset('assets/splash_small_car.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650),
              child: Center(
                child: Text(
                  "This Action May Contain Ads",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
