import 'package:cinematix/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';

class NewAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLight,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          'Confirm New\n   Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 50),
              height: size.width * 0.4,
              width: size.width * 0.4,
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/profile.png'),
                  )
                ],
              ),
            ),
            Text('Welcome',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text('Wendy Noer Isnaeni',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 100,),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => MyHomePage())
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
                  'Create My Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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
