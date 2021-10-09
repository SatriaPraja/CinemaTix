import 'package:cinematix/constanst.dart';
import 'package:cinematix/screen/home.dart';
import 'package:cinematix/screen/pay.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLight,
        centerTitle: true,
        toolbarHeight: 100,
        title: Text(
          'Checkout\nMovie',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            color: Colors.black
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30,),
                  child: Image.asset(
                    'assets/images/checkoutavengers.png',
                    height: 100,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Avangers End Game',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      child: Text(
                        'Average Rating - 7.9',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              width: size.width * 0.9,
              height: 2,
              decoration: BoxDecoration(
                color: Colors.black
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ID Orders',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('22081293',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cinema',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('Paris Van Java Mall',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date & Time',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('Sat 21, 12:00',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Seat Number',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('C1, C2',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('Rp 500.000 X 2',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fees',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('Rp 20.000 X 2',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,

                  ),
                ),
                Text('Rp 1.200.000',
                  textAlign: TextAlign.end ,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              width: size.width * 0.9,
              height: 2,
              decoration: BoxDecoration(
                  color: Colors.black
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => SuccessPage())
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
                  'Checkout Now',
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
