import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(new MyApp());
}

dynamic greyColor = Color.fromARGB(255, 112, 112, 112);
dynamic blueColor = Color.fromARGB(255, 63, 170, 197);
dynamic greenColor = Color.fromARGB(255, 77, 255, 210);
double slideUpHeight = 75;
double borderRadius = 25;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArialRoundedBd"),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    greenColor,
                    blueColor,
                  ],
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                            color: greyColor.withOpacity(0.2),
                            width: 0.5,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          top: 25,
                          left: 25,
                          right: 25,
                          bottom: 10,
                        ),
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          heightFactor: 1,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Text(
                                        "Good afternoon,",
                                        style: TextStyle(
                                          fontSize: 28,
                                          color: greyColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Text(
                                        "William Holtsdalen",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: blueColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 225,
                            width: 196,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                                side: BorderSide(
                                  color: greyColor.withOpacity(0.2),
                                  width: 0.5,
                                ),
                              ),
                              margin: EdgeInsets.only(left: 25, right: 5),
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.calendar_today_rounded,
                                      size: 48,
                                      color: greyColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 225,
                            width: 196,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                                side: BorderSide(
                                  color: greyColor.withOpacity(0.2),
                                  width: 0.5,
                                ),
                              ),
                              margin: EdgeInsets.only(right: 25, left: 5),
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.check_box_outlined,
                                      size: 52,
                                      color: greyColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SlidingUpPanel(
              backdropEnabled: true,
              backdropOpacity: 0.5,
              backdropColor: greenColor,
              maxHeight: 400,
              minHeight: slideUpHeight,
              collapsed: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius)),
                ),
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Icon(
                                Icons.calendar_today_outlined,
                                size: 36,
                                color: greyColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Icon(
                                Icons.check_box_outlined,
                                size: 36,
                                color: greyColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 7),
                              child: Icon(
                                Icons.home_outlined,
                                size: 50,
                                color: blueColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Icon(
                                Icons.info_outlined,
                                size: 36,
                                color: greyColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 0),
                              child: Icon(
                                Icons.add_circle,
                                size: 56,
                                color: greenColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              panel: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5 / 2),
                            color: blueColor,
                          ),
                          height: 5,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 75,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Icon(
                              Icons.settings,
                              size: 36,
                              color: greyColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
