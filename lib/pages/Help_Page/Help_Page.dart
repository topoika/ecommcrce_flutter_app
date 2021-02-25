import 'package:dogalgaz/constants/themeData.dart';
import 'package:flutter/material.dart';

class HelpPageWidget extends StatefulWidget {
  const HelpPageWidget({Key key}) : super(key: key);

  @override
  _HelpPageWidgetState createState() => _HelpPageWidgetState();
}

class _HelpPageWidgetState extends State<HelpPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyData.backColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              height: 1200,
            ),
            Container(
              color: Colors.green,
              height: 1200,
            )
          ],
        )),
      ),
    );
  }
}
