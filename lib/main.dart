import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets.dart';
import 'assets.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

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
                                topBoxText(
                                  28,
                                  greyColor,
                                  "Good afternoon,",
                                ),
                                topBoxText(
                                  20,
                                  blueColor,
                                  "William Holtsdalen",
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
                        secondRowCard(25, 5, Icons.calendar_today_outlined, 48,
                            greyColor),
                        secondRowCard(
                            5, 25, Icons.check_box_outlined, 52, greyColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SlideUpMenu(),
          ],
        ),
      ),
    );
  }

  Container topBoxText(double fontSize, dynamic color, String text) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArialRoundedBd"),
      home: Scaffold(
          body: Card(
        child: Text("Test test"),
      )),
    );
  }
}

Expanded secondRowCard(
  double marginLeft,
  double marginRight,
  dynamic icon,
  double iconSize,
  dynamic color,
) {
  return Expanded(
    flex: 5,
    child: Container(
      height: 225,
      width: 196,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: greyColor.withOpacity(0.2),
            width: 0.5,
          ),
        ),
        margin: EdgeInsets.only(left: marginLeft, right: marginRight),
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                icon,
                size: iconSize,
                color: color,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
