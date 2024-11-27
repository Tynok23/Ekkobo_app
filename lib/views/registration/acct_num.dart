import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/registration/log_in.dart';

class AcctnumPage extends StatefulWidget {
  const AcctnumPage({super.key});

  @override
  State<AcctnumPage> createState() => _AcctnumPageState();
}

class _AcctnumPageState extends State<AcctnumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height:100 ,),
              Card(
                elevation: 6, // Elevation for shadow
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(32), // Rounded corners
                ),
                child: Container(
                  height: 402.h,
                  width:331.w ,
                 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Hello there! Here is your account number.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                          fontFamily: 'Ubuntu'
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('123456789',style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                              fontFamily: 'Ubuntu'
                          ),
                          ),
                          SizedBox(width: 15,),
                          Image(
                            image: AssetImage('images/export.png'),
                            height: 18,
                            width: 18,),
                          ],
                      ),
                      SizedBox(height: 70,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  height: 58.h,
                  width: 336.w,
                  color:Color(0xFF170AF5),
                  child: Center(
                    child: Text('Go back to Login',
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
            ],
          ),
        ),
      ),
    );
  }
}
