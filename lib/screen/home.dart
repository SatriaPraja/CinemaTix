import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kLight,
        items: <Widget> [
          Icon(Icons.video_library_outlined, size: 30 ,color: kPrimary),
          Icon(Icons.download_outlined, size: 30 ,color: kPrimary),
          Icon(Icons.wallet_giftcard_outlined, size: 30 ,color: kPrimary),
        ],
        onTap: (index) {
          debugPrint("Current index is $index");
        },
      ),
      body: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: kPrimary,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 65,
                  left: 30,
                  child: Container(
                    height: size.width * 0.16,
                    width: size.width * 0.16,
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('assets/profile.png'),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 120,
                  child: Text(
                    "Wendy Noer Isnaeni",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 120,
                  child: Text(
                    'IDR 28.000',
                    style: TextStyle(
                      fontSize: 16,
                      color: kMargin,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(right: 200),
            child: Text(
              'Now Playing',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}