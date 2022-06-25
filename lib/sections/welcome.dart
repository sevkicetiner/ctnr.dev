import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.onClick}) : super(key: key);
  VoidCallback onClick;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var isShown = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.maxFinite,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Colors.grey[400],
                  Colors.grey[300],
                  Colors.grey[100],
                  Colors.white,
                ],
              )
            ),
            // child:
            // Image.asset("developertable.jpg",
            //     fit: BoxFit.fill,
            //   scale: 1,
            // ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            left: 50,
            child: GestureDetector(
              child: Center(
                child: Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "next",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: widget.onClick,
            ),
          ),
          Positioned(
              right: MediaQuery.of(context).size.width / 8,
              top: MediaQuery.of(context).size.height / 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "  Sevki Cetiner",
                        style: TextStyle(fontSize: 83),
                      ),
                      showDecriptionMain()
                    ],
                  ),
                ],
              )),
          Positioned(
              left: MediaQuery.of(context).size.width / 8,
              top: MediaQuery.of(context).size.height / 4,
              child: CircleAvatar(
                radius: 250,
                backgroundImage: AssetImage("profile.jpg"),
                backgroundColor: Colors.transparent,
              ))
        ],
      ),
    );
  }

  AnimatedPositioned showDecriptionMain() {
    return AnimatedPositioned(
      height: 300,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      child: Text(
        "Welcome, \n I am a Senior Android and Flutter Developer."
        " \n You can see my resume in the next sections",
        style: GoogleFonts.shadowsIntoLight(fontSize: 40),
      ),
    );
  }
}
