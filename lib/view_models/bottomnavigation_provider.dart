
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtomnavigationProvider extends ChangeNotifier {

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners(); // Notify listeners to rebuild the UI
  }
   final Color _originalColor = Colors.grey;
  // State to track current color
  Color _currentColor = Colors.black;
  bool _isOriginalColor = true; // Tracks if current color is original

  Color get currentColor => _currentColor;

  // Track whether the color is customized (not original)
  bool get isColorCustomized => !_isOriginalColor;

  void toggleColor() {
    if (_isOriginalColor) {
      // Change to a new random color
      _currentColor = Color(0xFF170AF5);
    } else {
      // Revert to the original color
      _currentColor = _originalColor;
    }
    _isOriginalColor = !_isOriginalColor; // Toggle the state
    notifyListeners();
  }


}