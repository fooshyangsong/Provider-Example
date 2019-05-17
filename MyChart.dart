import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart'; // ? **********
import 'NotifySliderPos.dart';

class MyChart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    refreshed(double newVal){
       Map<String, double> dataMap = {
        'Tesla': 5,
        'Google': 3,
        'Verisay': newVal*3,
      };
      return dataMap;
    }
      
    return Consumer<NotifySliderPos>( // ? **********
      builder: (context, schedule, _) => PieChart( // ? **********
        dataMap: refreshed(schedule.sliderPos), // ? **********
      )
    );
  }
}