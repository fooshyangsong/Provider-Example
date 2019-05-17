import 'package:flutter/foundation.dart';

// ? ********************************
class NotifySliderPos with ChangeNotifier{
  double _sliderPos = 0.5;
  double get sliderPos => _sliderPos;
  set sliderPos(double newValue){
    _sliderPos = newValue;
    notifyListeners();
  }
}