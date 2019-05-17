import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart'; // ? **********
import 'NotifySliderPos.dart'; // ? **********
import 'MyChart.dart'; 
import 'MySlider.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider ( // ? **********
      builder: (context) => NotifySliderPos(), // ? **********
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(),
        body: Column(
          children: <Widget>[

            Expanded(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: MyChart(),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(32),
              child: MySlider(),
            )

          ],
        ),
      ),
    );
  }
}