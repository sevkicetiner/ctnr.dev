import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Padding(
         padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Home',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              width: 100.0,
            ),
            Text(
              'About',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              width: 100.0,
            ),
            Text(
              'Contact',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
