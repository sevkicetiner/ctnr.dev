import 'package:ctnrweb/NavigationBarWeb.dart';
import 'package:ctnrweb/sections/aboutme.dart';
import 'package:ctnrweb/sections/projects.dart';
import 'package:ctnrweb/sections/technologies.dart';
import 'package:ctnrweb/sections/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.comfortaaTextTheme()),
      home: Container(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var list = ["Home", "Technologies", "Projects", "About"];
  var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];
  var positionStateZero = true;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {

    controller.addListener(() {
      print(controller.position);
    });

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            margin: MediaQuery.of(context).size.width > 750
                ? EdgeInsets.only(left: 30, right: 30)
                : EdgeInsets.zero,
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "ctnr",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "TimesRoman"),
                  ),
                ),
                Spacer(),
                Row(
                    children: list
                        .map((e) => GestureDetector(
                              onTap: () {
                                _scrollToIndex(list.indexOf(e));
                              },
                              child: Container(
                                color: positionStateZero
                                    ? Colors.transparent
                                    : Colors.grey.shade200,
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ))
                        .toList()),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
          Expanded(
              child: PageView(
                dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.vertical,
                  // pageSnapping: true,
                  controller: controller,
                  children: [
                WelcomePage(
                  onClick: () {
                    _scrollToIndex(1);
                  },
                ),
                TechnologiesPage(),
                ProjectsPage(),
                AboutMe()
              ])),
        ],
      )),
    );
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}
