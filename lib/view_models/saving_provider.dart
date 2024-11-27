

import 'package:flutter/cupertino.dart';

class SavingProvider extends ChangeNotifier{

  List<String> sfreq = [
    "daily","weekly", "montly"
  ];

  String? _selectedFreq;

  String? get selectedFreq => _selectedFreq;

  void selectFrequency(String? sfreq) {
    _selectedFreq = sfreq;
    notifyListeners();
  }

}