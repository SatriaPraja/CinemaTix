import 'package:cinematix/screen/newmovie.dart';
import 'package:cinematix/splashscreen/signin.dart';
import 'package:cinematix/splashscreen/signup.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  final tabs = [
    NewMoviePage(),
    SignInPage(),
    SignUpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: kLight,
        items: <Widget> [
          Icon(Icons.video_library_outlined, size: 30 ,color: kPrimary),
          Icon(Icons.wallet_giftcard_outlined, size: 30 ,color: kPrimary),
          Icon(Icons.person_rounded, size: 30 ,color: kPrimary),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
