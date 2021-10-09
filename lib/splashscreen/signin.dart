import 'package:cinematix/splashscreen/forgotpassword.dart';
import 'package:cinematix/splashscreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';
import 'package:cinematix/screen/home.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100.0,
            left: 30.0,
            child: new Image.asset('assets/logo.png',
              height: 100,
            ),
          ),
          Positioned(
            top: 300,
            left: 30,
            child: Text('Welcome Back,\nExplorer!',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 410,
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
            top: 420,
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
            top: 510,
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
            top: 520,
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
            top: 600,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Forgot Password? ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ForgotPasswordPage())
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Text('Get Now',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 640,
            left: size.width * 0.4,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => MyHomePage())
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

          Positioned(
            top: 740,
            left: 95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Start fresh now? ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage())
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Text('Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      color: kPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
