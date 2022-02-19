import 'dart:async';

import 'package:flutter/material.dart';
import 'detailsPage.dart';
import 'detailsPage2.dart';
import 'detailsPage3.dart';
import 'detailsPage4.dart';
import 'detailsPage5.dart';
import 'detailsPage6.dart';
import 'detailsPage7.dart';
import 'detailsPage8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assests/images/logonobg.png',
              height: 300
            ),
            SizedBox(
              height: 30,
            ),
            Text('All Needed Engeneering calculations',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 18.0)),
            SizedBox(width: 10.0),
            Text('in one place',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 18.0)),
            SizedBox(width: 10.0),
            Text('Product of Data Pirates',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // IconButton(
                //   icon: Icon(Icons.doorbell_sharp),
                //   color: Colors.white,
                //   onPressed: () {},
                // ),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //Image.asset("assests/images/login.png",width: 60.0,height: 60.0,),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Options',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0)),
                SizedBox(width: 10.0),
                Text('Menu',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 22.0))
              ],
            ),
          ),

          SizedBox(height: 40.0),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                ),
                color: Colors.white),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 230.0,
                        child: ListView(children: [
                          _buildFoodItem('assests/images/calculator.png', 'Compressive concrete', 'Strength calculator'),
                          _buildFoodItem2('assests/images/brick.png', 'Brick', 'Calculator'),
                          _buildFoodItem3('assests/images/AC.png', 'Air Conditioner', 'Size calculator'),
                          _buildFoodItem4('assests/images/frame.png', 'Wood Frame', 'Calculator'),
                          _buildFoodItem5('assests/images/floor.png', 'Flooring', 'Calculator'),
                          _buildFoodItem6('assests/images/staircase.png', 'Stair case Mixuture', 'Calculator'),
                          _buildFoodItem7('assests/images/steel.png', 'Steel Weight', 'Calculator'),
                          _buildFoodItem8('assests/images/termite.png', 'Anti - Termite', 'Calculator')

                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String name1, String name2,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(heroTag: imgPath, name1: name1, name2: name2)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath,
                              child: Image(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name1,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name2,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem2(String imgPath22, String name22, String name122,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage2(heroTag: imgPath22, name22: name22, name122: name122)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath22,
                              child: Image(
                                  image: AssetImage(imgPath22),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name22,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name122,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem3(String imgPath4, String name4, String name44,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage3(heroTag: imgPath4, name4: name4, name44: name44)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath4,
                              child: Image(
                                  image: AssetImage(imgPath4),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name4,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name44,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem4(String imgPath5, String name5, String name55,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage4(heroTag: imgPath5, name5: name5, name55: name55)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath5,
                              child: Image(
                                  image: AssetImage(imgPath5),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name5,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name55,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem5(String imgPath6, String name6, String name66,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage5(heroTag: imgPath6, name6: name6, name66: name66)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath6,
                              child: Image(
                                  image: AssetImage(imgPath6),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name6,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name66,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem6(String imgPath7, String name7, String name77,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage6(heroTag: imgPath7, name7: name7, name77: name77)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath7,
                              child: Image(
                                  image: AssetImage(imgPath7),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name7,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name77,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem7(String imgPath8, String name8, String name88,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage7(heroTag: imgPath8, name8: name8, name88: name88)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath8,
                              child: Image(
                                  image: AssetImage(imgPath8),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name8,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name88,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
  Widget _buildFoodItem8(String imgPath9, String name9, String name99,) {
    final Function press;
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage8(heroTag: imgPath9, name9: name9, name99: name99)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath9,
                              child: Image(
                                  image: AssetImage(imgPath9),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    name9,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    name99,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
                    color: Colors.black,
                    onPressed: () {}
                )
              ],
            )
        ));
  }
}




//Second commit


