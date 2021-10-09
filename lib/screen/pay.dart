import 'package:cinematix/screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';
class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/success.png', height: 150,),
            SizedBox(height: 100,),
            Text(
              'Happy Watching!',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'You have Successfully',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
              ),
            ),
            Text(
              'bought the tickets',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => MyHomePage())
                );
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.only(top: 100),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimary,
                ),
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: Text(
                  'My Tickets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discovered new movies?',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHomePage())
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Text(
                    'Back To Home',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
