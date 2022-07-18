import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderProvider with ChangeNotifier {
  bool _isMale = true;

  bool get isMale => _isMale;

  set isMale(bool newValue) {
    _isMale = newValue;
    notifyListeners();
  }

  get color => _isMale ? Colors.blue : Colors.pink;
  get maleContainer => _isMale ? Colors.blue : Colors.grey;
  get femaleContainer => _isMale ? Colors.grey : Colors.pink;
}
