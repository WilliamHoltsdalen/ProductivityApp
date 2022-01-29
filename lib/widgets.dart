import 'package:flutter/material.dart';
import 'package:flutter_practice/main.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:page_transition/page_transition.dart';
import 'CalendarPage.dart';
import 'assets.dart';

Color colorPageIcon(String pageIndex, String iconIndex) {
  if (pageIndex == iconIndex) {
    return blueColor;
  } else {
    return greyColor;
  }
}

class SlideUpMenu extends StatelessWidget {
  SlideUpMenu({@required this.backDropColor, this.pageName});
  final Color backDropColor;
  final String pageName;

  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      backdropOpacity: 0.5,
      backdropColor: backDropColor,
      maxHeight: 400,
      minHeight: slideUpHeight,
      // parallaxEnabled: true,
      // parallaxOffset: 0.5,
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
                        color: colorPageIcon(pageName, "CalendarPage"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: CalendarPage(),
                            ),
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
                        color: colorPageIcon(pageName, "ToDoPage"),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.home_outlined,
                          ),
                          iconSize: 44,
                          color: colorPageIcon(pageName, "HomePage"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: HomePage(),
                              ),
                              // MaterialPageRoute(
                              //     builder: (context) => const HomePage()),
                            );
                          },
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Icon(
                        Icons.info_outlined,
                        size: 40,
                        color: colorPageIcon(pageName, "ThoughtsPage"),
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
