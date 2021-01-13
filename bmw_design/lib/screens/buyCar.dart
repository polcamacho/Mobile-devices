//Buy screen

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:bmw_design/widgets/car.dart';

class BuyCar extends StatefulWidget {
  @override
  _BuyCarState createState() => _BuyCarState();
}

class _BuyCarState extends State<BuyCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 5,
                child: BuyCarPreview(),
              ),
              Expanded(
                flex: 6,
                child: BuyCarInfo(),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class BuyCarPreview extends StatefulWidget {
  // final Car car;
  // BuyCarPreview({this.car});
  @override
  _BuyCarPreviewState createState() => _BuyCarPreviewState();
}

class _BuyCarPreviewState extends State<BuyCarPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset(
        'assets/headerPic.jpg',
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}

class BuyCarInfo extends StatefulWidget {
  @override
  _BuyCarInfoState createState() => _BuyCarInfoState();
}

class _BuyCarInfoState extends State<BuyCarInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Car Name",
                    style: TextStyle(
                      fontFamily: 'AdventProL',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text(
                    "Model, Manufacturer",
                    style: TextStyle(
                      fontFamily: 'AdventProL',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          FloatingActionButton(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            onPressed: () {},
            child: Text(
              "BUY NOW",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

    //Car Name
    //Model
    //Price
  }
}
