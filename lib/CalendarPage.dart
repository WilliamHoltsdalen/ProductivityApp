import 'package:flutter/material.dart';
import 'widgets.dart';
import 'assets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  String? selectedValue;

  List<String> items = [
    'January 2022',
    'February 2022',
    'March 2022',
    'April 2022',
    'May 2022',
    'June 2022',
    'July 2022',
    'August 2022',
    'September 2022',
    'October 2022',
    'November 2022',
    'December 2022'
  ];

  @override
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
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Text('Current Month'),
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 30,
                              fontFamily: "ArialRoundedBd"),
                          value: selectedValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 40,
                          items: items
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          itemPadding:
                              EdgeInsets.only(left: 15, right: 15, top: 10),
                          dropdownMaxHeight: 250,
                          dropdownWidth: 270,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          scrollbarRadius: Radius.circular(40),
                          scrollbarThickness: 5,
                          scrollbarAlwaysShow: true,
                          offset: Offset(-5, 0),
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
            SlideUpMenu(
              pageName: "CalendarPage",
              backDropColor: Colors.white,
            ),
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
