import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TechnologiesPage extends StatefulWidget {
  const TechnologiesPage({Key key}) : super(key: key);

  @override
  _TechnologiesPage createState() => _TechnologiesPage();
}

class _TechnologiesPage extends State<TechnologiesPage> {
  List<Map<String, String>> techMap = [
    {
      "image": "developertable.jpg",
      "title": "Flutter",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
    {
      "image": "developertable.jpg",
      "title": "Android",
      "subTitle": "Android is the most used operating system in the world."
    },
    {
      "image": "developertable.jpg",
      "title": "IOS Swift",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
  ];

  List<Map<String, String>> secondMap = [
    {
      "image": "developertable.jpg",
      "title": "Java",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
    {
      "image": "developertable.jpg",
      "title": "Spring Boot",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
    {
      "image": "developertable.jpg",
      "title": "Angular",
      "subTitle": "Android is the most used operating system in the world."
    },
    {
      "image": "developertable.jpg",
      "title": "TypeScript",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
  ];

  List<Map<String, String>> treeRow = [
    {
      "image": "developertable.jpg",
      "title": "NoSQL",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
    {
      "image": "developertable.jpg",
      "title": "MySQL",
      "subTitle":
          "Android is the second most used operating system in the world. The tenth of many innovations"
    },
  ];

  var _listController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.6, 0.7, 0.9],
            colors: [
              Colors.white,
              Colors.white,
              Colors.grey[300],
              Colors.grey[400],
            ],
          )
      ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Center(
                  child: Text("I have been using these technologies;",
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w300,
                          color: Colors.black26))),
            ),
            buildExpanded(techMap),
            Padding(
              padding: EdgeInsets.all(40),
              child: Center(
                  child: Text("I used these technologies too;",
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w300,
                          color: Colors.black26))),
            ),
            buildExpanded(secondMap),
            buildExpanded(treeRow),
          ],
        ));
  }

  Widget buildExpanded(List<Map<String, String>> list) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: list.map((e) {
          return Container(
            width: 200,
            child: Card(
              margin: EdgeInsets.all(10.0),
              elevation: 10.0,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e["title"],
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        e["image"],
                        scale: 1.2,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     e["subTitle"],
                    //     style: TextStyle(fontSize: 18, color: Colors.black26),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          );
        }).toList());
  }
}
