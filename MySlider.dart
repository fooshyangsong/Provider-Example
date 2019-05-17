import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // ? **********
import 'NotifySliderPos.dart'; // ? **********

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final schedule = Provider.of<NotifySliderPos>(context); // ? **********

    return Slider(
      value: schedule.sliderPos, // ? **********
      onChanged: (newVal) => schedule.sliderPos = newVal, // ? **********
    );
  }
}
