
import 'package:cinematix/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constanst.dart';
import 'package:cinematix/splashscreen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimary,
          scaffoldBackgroundColor: kLight,
          textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme.apply(bodyColor: kLight))
      ),
      home: SplashScreen(),
    );
  }
}


