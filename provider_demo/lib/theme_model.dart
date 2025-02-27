
import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier{
  bool _isLisghtTheme = true;

  bool get isLightTheme => _isLisghtTheme;

  void toggeleTheme(){
    _isLisghtTheme = !_isLisghtTheme;
    notifyListeners();
  }
}