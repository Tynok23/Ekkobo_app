import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/registration/sign_up.dart';

import '../boarding_page.dart';
import 'log_in.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // Close the bottom sheet
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoardingPage()),
                          );
                        },
                        child: Icon(Icons.arrow_back_ios)),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  'Epay',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to KOBOS',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Keep all your finances on track and have interest of keeping them.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Close the bottom sheet
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 58.h,
                    width: 336.w,
                    color: Color(0xFF170AF5),
                    child: Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                            fontFamily: 'Ubuntu'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Close the bottom sheet
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Container(
                    height: 58.h,
                    width: 336.w,
                    color: Color(0xFFF0EFFF),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xFF170AF5),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                            fontFamily: 'Ubuntu'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ));
  }
}
