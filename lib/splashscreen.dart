import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rentme_app/rentme_page.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => RentmePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Rent",
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
            Text(
              "Me",
              style: TextStyle(color: Colors.yellow, fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
