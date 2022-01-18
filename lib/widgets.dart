import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'assets.dart';
import 'main.dart';

class SlideUpMenu extends StatelessWidget {
  const SlideUpMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
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
                      child: IconButton(
                        icon: Icon(Icons.calendar_today_outlined),
                        iconSize: 36,
                        color: greyColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CalendarPage()),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Icon(
                        Icons.check_box_outlined,
                        size: 42,
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
                        size: 40,
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
    );
  }
}
