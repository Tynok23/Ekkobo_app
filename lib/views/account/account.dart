import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/account/contact_us.dart';
import 'package:kobo_app/views/account/profile_details.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
              fontFamily: 'Ubuntu'
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileDetails()),
                  );
                },
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(Icons.person_outline),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Profile', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                  ),),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context); // Close the bottom sheet
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.call_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Contact Us', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                        fontFamily: 'Ubuntu'
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Terms and Conditions', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                  ),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logout,
                      color: Color(0xFFF7487A)),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              content: SizedBox(
                              width: 331.w, // Set your desired width
                              height: 375.h, // Set your desired height
                              child: Center(
                                child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                Text(
                                'Are you sure you want to log out?',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w500,
                                    fontFamily: 'Ubuntu'
                                ),
                                                          textAlign: TextAlign.center,
                                                          ),
                                SizedBox(height: 50,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Close the dialog
                                      },
                                      style: ButtonStyle(
                                        minimumSize: WidgetStateProperty.all(Size(111.w, 46.h)),
                                        backgroundColor: WidgetStateProperty.all(Color(0xFF170AF5), ), // Background color
                                        foregroundColor: WidgetStateProperty.all(Colors.white),
                                                              shape: WidgetStateProperty.all(
                                                              RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.zero, // Makes the button rectangular
                                                              ),
                                                              ),// Text color
                                      ),

                                      child: Text('No'
                                      ),
                                    ),

                                ElevatedButton(

                                  onPressed: () {
                                    // Add your log-out logic here
                                    Navigator.of(context).pop(); // Close the dialog
                                  },

                                  style: ButtonStyle(
                                    minimumSize: WidgetStateProperty.all(Size(111.w, 46.h)),
                                    backgroundColor: WidgetStateProperty.all(Color(0xFFF7487A), ), // Background color
                                    foregroundColor: WidgetStateProperty.all(Colors.white),
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero, // Makes the button rectangular
                                      ),
                                    ),// Text color
                                  ),

                                  child: Text('Yes'
                                ),
                                ),],
                                )]),
                              )));
                        },
                      );
                    },
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFF7487A),
                          fontFamily: 'Ubuntu'
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
