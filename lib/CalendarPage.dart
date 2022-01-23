import 'package:flutter/material.dart';
import 'widgets.dart';
import 'assets.dart';
import 'dart:math' as math;

var date = new DateTime.now().day;
int monthLength =
    DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;

int dateCalculation(int i, int j) {
  int weekDayMonthStart = 6;

  int temp = 0;
  if ((i == 0) && j < weekDayMonthStart - 1)
    return 0;
  else if (i == 0 && j == (weekDayMonthStart - 1))
    temp = weekDayMonthStart - 1;
  else if (i == 0 && j == weekDayMonthStart)
    temp = weekDayMonthStart;
  else
    temp = j;

  if ((((i * 7) + (temp + 1)) - (weekDayMonthStart - 1)) > monthLength)
    return 0;
  else
    return (((i * 7) + (temp + 1)) - (weekDayMonthStart - 1));
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArialRoundedBd"),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(left: 50, top: 25, right: 50, bottom: 25),
                  child: Row(
                    children: <Widget>[
                      modeButton("Day", 70),
                      modeButton("Week", 70),
                      modeButton("Month", 255)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 5),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "January 2022",
                        style: TextStyle(color: greyColor, fontSize: 30),
                      ),
                      Transform.rotate(
                        angle: -math.pi / 2,
                        child: IconButton(
                          color: greyColor,
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 35),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          monthDayEntity("M", 150),
                          monthDayEntity("T", 150),
                          monthDayEntity("W", 150),
                          monthDayEntity("T", 150),
                          monthDayEntity("F", 150),
                          monthDayEntity("S", 150),
                          monthDayEntity("S", 150),
                        ],
                      ),
                      Column(
                        children: [
                          for (int i = 0; i < 6; i++)
                            Row(
                              children: [
                                for (int j = 0; j < 7; j++)
                                  monthDayEntity(
                                    dateCalculation(i, j),
                                    255,
                                  ),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SlideUpMenu(),
          ],
        ),
      ),
    );
  }

  Expanded monthDayEntity(dynamic text, int opacity) {
    if (text == 0)
      return Expanded(
          child: Text(
        "",
        textAlign: TextAlign.center,
      ));
    else if (text == date)
      return Expanded(
          child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Color.fromARGB(75, 112, 112, 112)),
        child: Padding(
          padding: EdgeInsets.only(bottom: 15, top: 15),
          child: Text(
            text.toString(),
            style: TextStyle(
                color: Color.fromARGB(opacity, 112, 112, 112), fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      ));
    else
      return Expanded(
          child: Padding(
        padding: EdgeInsets.only(bottom: 15, top: 15),
        child: Text(
          text.toString(),
          style: TextStyle(
              color: Color.fromARGB(opacity, 112, 112, 112), fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ));
  }

  Expanded modeButton(String text, int opacity) {
    return Expanded(
      child: Container(
        height: 35,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(opacity, 77, 255, 210),
            borderRadius: BorderRadius.circular(12)),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              color: greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
