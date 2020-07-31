import 'dart:math';

import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  bool _isAwesome = Random().nextBool();

  bool get isAwesome => _isAwesome;

  set isAwesome(bool val) {
    isAwesome = val;
    notifyListeners();
  }
}
