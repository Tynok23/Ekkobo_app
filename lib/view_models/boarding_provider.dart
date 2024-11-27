


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kobo_app/views/registration/welcome.dart';

class BoardingProvider extends  ChangeNotifier{
  List<Map<String, String>> _onboardingData = [
    {

      'description': 'Save your time and money',
      'image': 'images/bd1.png',
    },
    {

      'description': 'Get Interest on your Savings',
      'image': 'images/bd2.png',
    },
    {

      'description': 'Gain Access to your Money anytime needed',
      'image': 'images/bd3.png',
    },
  ];
  final List<List<String>> _highlightedWords = [
    [ 'money'],
    ['Interest'],
    ['Access'],
  ];

  List<Map<String, String>> get onboardingData => _onboardingData;
  List<List<String>> get highlightedWords => _highlightedWords;

  int _currentPage = 0;

  int get currentPage => _currentPage;

  void setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners(); // Notifies the UI of changes
  }


  bool _isOnboarded = false;

  bool get isOnboarded => _isOnboarded;

  void completeOnboarding() {
    _isOnboarded = true;
    notifyListeners();
  }

  takeMeToWelcomePageAfterPressing(BuildContext context){

     Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const WelcomePage()));

  }

}