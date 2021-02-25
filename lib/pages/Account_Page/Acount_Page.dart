import 'package:dogalgaz/constants/themeData.dart';
import 'package:flutter/material.dart';

class AccountPageWidget extends StatelessWidget {
  const AccountPageWidget({
    Key key,
  }) : super(key: key);

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
