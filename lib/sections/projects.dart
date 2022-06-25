import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key key}) : super(key: key);

  @override
  _ProjectsPage createState() => _ProjectsPage();
}

class _ProjectsPage extends State<ProjectsPage> {
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
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.grey[400],
              Colors.grey[300],
              Colors.grey[100],
              Colors.white,
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
            GestureDetector(
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
              onTap: (){},
            )
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
