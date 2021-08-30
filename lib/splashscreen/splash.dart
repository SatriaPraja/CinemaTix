import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';
import 'package:cinematix/splashscreen/signup.dart';
import 'package:cinematix/splashscreen/signin.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom; //we are using this to determine keyboard is opened or not
    double defaultLoginSize = size.height - (size.height * 0.1);
    return Scaffold(
        body: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Container(
                    width: size.width,
                    height: defaultLoginSize,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        SizedBox(height: 100,),
                        new Image.asset('assets/logo.png',
                          width: 620,
                          height: 170,),
                        SizedBox(height: 120,),
                        Text('New Experience',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 35,),
                        Text('Watch a new movie much\n    easier than any before',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 85,),
                        InkWell(
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(builder: (context) => SignUpPage())
                            );
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kPrimary,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            alignment: Alignment.center,
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account? ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.of(context)
                                    .push(
                                    MaterialPageRoute(builder: (context) => SignInPage())
                                );
                              },
                              borderRadius: BorderRadius.circular(10),
                              child: Text('Sign in',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: kPrimary,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
            )
          ],
        )
    );
  }
}