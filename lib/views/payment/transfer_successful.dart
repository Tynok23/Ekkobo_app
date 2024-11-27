import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/payment/payment_page.dart';

class TransferSuccessful extends StatelessWidget {
  const TransferSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          elevation: 8.0, // Elevation value
          borderRadius: BorderRadius.circular(32),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 300.w,
              height: 450.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('successful',style: TextStyle(color:Color(0xFF170AF5),
                          fontFamily: 'Ubuntu',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),),
                      Icon(Icons.cancel_presentation,size: 24,)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Image(
                    image: AssetImage('images/avater.png'),
                    height: 119,
                    width: 119,),
                  SizedBox(height: 30,),
                  Text('You have successully transferred NGN38,500 to Daniel Esivue',style: TextStyle(
                      fontFamily: 'Ubuntu',
                          fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pop(
                            context); // Close the bottom sheet
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PaymentPage()),
                        );

                      }, child: Text('OK',style: TextStyle(
                        color: Color(0xFF170AF5),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ubuntu',
                      ),)),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context); // Close the bottom sheet
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PaymentPage()),
                          );
                        },
                        child: Container(
                          height: 46.h,
                          width: 145.w,
                          color: Color(0xFF170AF5),
                          child: Center(
                            child: Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
