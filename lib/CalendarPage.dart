import 'package:flutter/material.dart';
import 'widgets.dart';
import 'assets.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ArialRoundedBd"),
      home: Scaffold(
          body: Stack(children: <Widget>[
        ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 50, top: 25, right: 50, bottom: 25),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 35,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(70, 77, 255, 210),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Day",
                          style: TextStyle(
                            color: greyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(70, 77, 255, 210),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Week",
                          style: TextStyle(
                            color: greyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 255, 210),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Month",
                          style: TextStyle(
                            color: greyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 5),
              child: Text(
                "January 2022",
                style: TextStyle(color: greyColor, fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 0, top: 35),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "M",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "T",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "W",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "T",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "F",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "S",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "S",
                      style: TextStyle(
                          color: Color.fromARGB(150, 112, 112, 112),
                          fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SlideUpMenu(),
            ),
          ],
        )
      ])),
    );
  }
}
