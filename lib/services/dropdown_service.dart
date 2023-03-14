import 'package:flutter/material.dart';

class DropdownService extends ChangeNotifier {
  var countryDropdownList = ['Australia', 'New Zealand', 'Bangladesh'];
  var selectedCountry = 'Australia';

  void setCountryValue(value) {
    selectedCountry = value;
    notifyListeners();
  }
}

class MeasurementTypes extends ChangeNotifier {
  var measurementDropdownList = [' ',  'g', 'kg', 'ml', 'L'];
  var selectedMeasurement = ' ';

  void setMeasurementType(value) {
    selectedMeasurement = value;
    notifyListeners();
  }
}