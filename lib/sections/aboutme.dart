import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Row(
            children: [

              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Text("2020")
            ],
          ),
          Row(
            children: [
              Container(),
              Container(
                height: 50,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Text("2020"),
              Text(
                "o",
                style: TextStyle(fontSize: 40),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Text("2020"),
              Text(
                "o",
                style: TextStyle(fontSize: 40),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Text("2020"),
              Text(
                "o",
                style: TextStyle(fontSize: 40),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ])
      ],
    );
  }
}
