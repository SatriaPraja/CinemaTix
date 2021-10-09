import 'package:cinematix/screen/book.dart';
import 'package:cinematix/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';
class detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(260),
        child: AppBar(
          backgroundColor: kLight,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/detailavenger.png'),
              )
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Avenger End Game',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  Text('Action - English',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                  ),),
                  SizedBox(height: 5,),
                  Image.asset('assets/images/rating.png', height: 35,),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 30, left: 30, bottom: 20),
                    child: Text(
                      'Cast & Crew',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    margin: EdgeInsets.only(left: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Image.asset("assets/cast/robbie.png",),
                        SizedBox(width: 20,),
                        Image.asset("assets/cast/chris.png", ),
                        SizedBox(width: 20,),
                        Image.asset("assets/cast/robert.png", ),
                        SizedBox(width: 20,),
                        Image.asset("assets/cast/josh.png", height: 320,),
                        SizedBox(width: 20,),
                        Image.asset("assets/cast/tom.png", ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 30, left: 30, bottom: 20),
                    child: Text(
                      'Storyline',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    child: Text(
                      'The near future, a line when both hope and hard ships drive humanity ti look to the stars and beyond. While a mysterious \n\nThe grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take one final stand in Marvel Studios grand conclusion to twenty-two films, Avengers: Endgame.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .push(
                          MaterialPageRoute(builder: (context) => BookingPage())
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
                        'Continue to Book',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
