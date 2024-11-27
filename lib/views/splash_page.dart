import 'package:flutter/material.dart';
import 'package:kobo_app/views/boarding_page.dart';
//import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => BoardingPage(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child:Text('Epay',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 79.2,
                  fontFamily: 'Ubuntu'
              ),
            )
          ),
        ],
      ),
    );
  }
}
