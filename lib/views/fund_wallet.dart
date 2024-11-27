import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/home_screen.dart';
import 'package:kobo_app/views/registration/sign_up.dart';
import 'package:provider/provider.dart';

import '../view_models/bottomnavigation_provider.dart';

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){// Close the bottom sheet
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Icon(Icons.cancel_presentation,size: 24,)),
        title: Text(
          'Fund Wallet',
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
              SizedBox(height: 50),
              Stack(
                //alignment: Alignment.center,
                children: [
                  //   // First layer (larger)
                  //   Positioned(
                  //     top: 40,
                  //     child: Container(
                  //       height: 240, // Adjust height for the bottom layer
                  //       width: 300, // Adjust width for the bottom layer
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(8),
                  //         color: Color(0xFF120B8F).withOpacity(0.5), // Semi-transparent color
                  //       ),
                  //     ),
                  //   ),
                  //   // Second layer (smaller)
                  Container(
                    height: 193.h,
                    width: 316.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF120B8F), // Main color for the second layer
                    ),
                  ),
                  Positioned(
                    top: 10,
                  right: 10,
                  child: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,)),
                  Positioned(
                    top: 40,
                    left: 100,
                    child: Column(
                      children: [
                        Text(
                          'Main account balance',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                              fontFamily: 'Ubuntu'
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'NGN 0.00',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontFamily: 'Ubuntu'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '8169566824',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                  fontFamily: 'Ubuntu'
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 1, // Width of the divider line
                              height: 20, // Height of the divider line
                              color: Colors.white, // Color of the divider line
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Active',
                              style: TextStyle(
                                color: Colors.green,
                                  fontFamily: 'Ubuntu'
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Use a new payment method (20,000)',style: TextStyle(
                      fontFamily: 'Ubuntu',
                          fontSize: 16,
                      fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  Consumer<ButtomnavigationProvider>(
                    builder: (context, colorProvider, child) {
                      return Image(
                        image: AssetImage('images/fund.png'),
                        height: 24,
                        width: 24,
                        color: colorProvider.currentColor,
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  // The Text that listens to the color from the ColorProvider.
                  Consumer<ButtomnavigationProvider>(
                    builder: (context, colorProvider, child) {
                      return Text(
                        'Use New payment Method\nPayStack',

                        style: TextStyle(fontSize: 14, color: colorProvider.currentColor,fontFamily: 'Ubuntu'),
                      );
                    },
                  ),
                  SizedBox(width: 80),
                  // The clickable dot (InkWell) that changes the color using the ColorProvider.
                  Consumer<ButtomnavigationProvider>(
                    builder: (context, colorProvider, child) {
                      return InkWell(
                        onTap: colorProvider.toggleColor,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorProvider.currentColor, // Use currentColor for the border
                              width: 2.0, // Set the thickness of the border
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),

              SizedBox(height: 20), // Spacing between circle and total amount
              // Show the payment container if it's visible
              Consumer<ButtomnavigationProvider>(
                builder: (context, colorProvider, child) {
                  return colorProvider.isColorCustomized
                      ? InkWell(
                    onTap: () {
                      // Add any action when clicking the amount container
                      print('Amount container clicked!');
                    },
                    child:  Container(
                      height: 58.h,
                      width: 336.w,
                      color:Color(0xFF170AF5),
                      child: Center(
                        child: Text('Continue(N20,000)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                              fontFamily: 'Ubuntu'
                          ),
                        ),
                      ),
                    ),
                  )
                      : SizedBox(); // Return an empty widget if not visible
                },
              ),
                ],
              ),
        ),
      ),
    );
  }
}
