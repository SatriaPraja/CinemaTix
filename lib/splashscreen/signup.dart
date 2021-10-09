import 'package:cinematix/constanst.dart';
import 'package:cinematix/splashscreen/newaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/screen/home.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLight,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          '  Create New\nYour Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: size.width * 0.35,
            child: Container(
              height: size.width * 0.3,
              width: size.width * 0.3,
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/profil.png'),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: size.width * 0.025,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kLight,
                  border: Border.all(color: Colors.grey,
                      style: BorderStyle.solid
                  )
              ),

              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 45,
            child: Text('Full Name',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  backgroundColor: kLight
              ),
            ),
          ),


          Positioned(
            top: 270,
            left: size.width * 0.025,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kLight,
                  border: Border.all(color: Colors.grey,
                      style: BorderStyle.solid
                  )
              ),

              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 45,
            child: Text('Email Address',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  backgroundColor: kLight
              ),
            ),
          ),

          Positioned(
            top: 370,
            left: size.width * 0.025,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kLight,
                  border: Border.all(color: Colors.grey,
                      style: BorderStyle.solid
                  )
              ),

              child: TextField(
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 45,
            child: Text('Password',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  backgroundColor: kLight
              ),
            ),
          ),

          Positioned(
            top: 470,
            left: size.width * 0.025,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kLight,
                  border: Border.all(color: Colors.grey,
                      style: BorderStyle.solid
                  )
              ),

              child: TextField(
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                ),
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: 45,
            child: Text(' Confirm Password',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  backgroundColor: kLight
              ),
            ),
          ),

          Positioned(
            top: 580,
            left: size.width * 0.4,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => NewAccountPage())
                );
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: size.width * 0.2,
                height: size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kPrimary,
                ),
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: Image.asset('assets/arrow.png',
                  width: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
