import 'package:flutter/material.dart';

class ProviderExp extends ChangeNotifier {

  String textValue = "";
  setTextValue(String newTextValue){
    textValue = newTextValue;
    notifyListeners();
  }


}