
import 'package:cinematix/screen/checkout.dart';
import 'package:cinematix/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:cinematix/constanst.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final day = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
  final time = ['09.30', '11.30', '14.30'];
  final location = ['CGV Paris Van Java', 'CGV Starium', 'Velvet Class', 'Satin Class'];
  String? value1;
  String? value2;
  String? value3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLight,
        toolbarHeight: 100,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20, left: 40, bottom: 20),
            child: Text(
              'Choose Date',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 30, left: 40, bottom: 20),
            child: Text(
              'Select Day',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value1,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                  isExpanded: true,
                  items: day.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value1 = value),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 30, left: 40, bottom: 20),
            child: Text(
              'Select Time',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value2,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                  isExpanded: true,
                  items: time.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value2 = value),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 30, left: 40, bottom: 20),
            child: Text(
              'Select Location',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value3,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                  isExpanded: true,
                  items: location.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value3 = value),
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Positioned(
            left: size.width * 0.4,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => SeatBook())
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
  DropdownMenuItem<String> buildMenuItem(String item) =>DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(
        fontSize: 18,
        color: Colors.black
      ),
    ),
  );
}
class SeatBook extends StatefulWidget {
  @override
  _SeatBookState createState() => _SeatBookState();
}

class _SeatBookState extends State<SeatBook> {
  int selected = 0;

  Widget customRadio(String text, int index) {
    return FlatButton(
      minWidth: 50,
      height: 50,
      onPressed: (){
        setState(() {
          selected = index;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: (selected == index) ? Colors.deepOrangeAccent : Colors.white,

        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18
            ),
          ),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: kLight,
        title: Text(
          ' Avengers\nEnd Game',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,

          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customRadio('A1', 1),
                customRadio('A2', 2),
                customRadio('A3', 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customRadio('B1', 1),
                customRadio('B2', 2),
                customRadio('B3', 3),
                customRadio('B4', 4),
                customRadio('B4', 5),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => CheckoutPage())
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
          ],
        ),
      ),
    );
  }
}

