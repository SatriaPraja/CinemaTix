import 'package:cinematix/screen/detailmovie.dart';
import 'package:cinematix/splashscreen/forgotpassword.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';

class NewMoviePage extends StatefulWidget {
  @override
  _NewMoviePageState createState() => _NewMoviePageState();
}

class _NewMoviePageState extends State<NewMoviePage> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
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
              Container(
                margin: EdgeInsets.only(top: 20, right: 190),
                child: Text(
                  'Now Playing',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),
                ),
              ),
              Container(
                height: 170,
                margin: EdgeInsets.only(top: 25, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => ForgotPasswordPage())
                        );
                      },
                      child: Container(
                          height: 140,
                          width: 260,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/sonic.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 30, top: 85),
                                child: Text('Sonic',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 60,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 100,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 140,top: 127),
                                child: Text(
                                  '6/10',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => detail())
                        );
                      },
                      child: Container(
                          height: 140,
                          width: 260,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/endgame.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 30, top: 85),
                                child: Text('Avanger Endgame',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 60,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.yellow,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 100,top: 127),
                                child: Icon(
                                  Icons.star, color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 140,top: 127),
                                child: Text(
                                  '7/10',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => ForgotPasswordPage())
                        );
                      },
                      child: Container(
                        height: 140,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/snoppy.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 30, top: 85),
                              child: Text('Snoppy',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20,top: 127),
                              child: Icon(
                                Icons.star, color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40,top: 127),
                              child: Icon(
                                Icons.star, color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60,top: 127),
                              child: Icon(
                                Icons.star, color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80,top: 127),
                              child: Icon(
                                Icons.star, color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 100,top: 127),
                              child: Icon(
                                Icons.star, color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 140,top: 127),
                              child: Text(
                                '6/10',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey
                                ),
                              ),
                            )
                          ],
                        )
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, right: 190, bottom: 20),
                child: Text(
                  'Browse Movie',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/action.png", height: 80,),
                    SizedBox(width: 30,),
                    Image.asset("assets/images/war.png", height: 80,),
                    SizedBox(width: 30,),
                    Image.asset("assets/images/horror.png", height: 80,),
                    SizedBox(width: 30,),
                    Image.asset("assets/images/music.png", height: 80,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 190,),
                child: Text(
                  'Coming Soon',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                height: 170,
                margin: EdgeInsets.only(top: 25, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Image.asset("assets/images/joker.png",),
                    SizedBox(width: 30,),
                    Image.asset("assets/images/harrypotter.png", ),
                    SizedBox(width: 30,),
                    Image.asset("assets/images/marvel.png", ),
                    SizedBox(width: 30,),
                    Image.asset("assets/images/sijuki.png",),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 190,),
                child: Text(
                  'Get Lucky Day',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/student.png', width: 330,),
                    Image.asset('assets/images/family.png', width: 330,),
                    Image.asset('assets/images/student.png', width: 330,),
                  ],
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
