import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/home_screen.dart';
import 'package:kobo_app/views/payment/transfer.dart';
import 'package:kobo_app/views/payment/withdrawal_successful.dart';
import 'package:provider/provider.dart';

import '../../view_models/payment_provider.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Payments',
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Close the bottom sheet
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TransferPage()),
                      );
                    },
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFF0EFFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/card-receive.png'),
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Transfer',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF170AF5),
                                fontFamily: 'Ubuntu'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        //barrierColor: Color(0xFFC2C1E2),
                        isScrollControlled: true,
                        backgroundColor:
                            Colors.transparent, // Allows custom height control
                        builder: (context) {
                          return FractionallySizedBox(
                            heightFactor: 0.5, // Takes 50% of the screen height
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Withdraw to Bank',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                              fontFamily: 'Ubuntu'
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Enter Amount',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                          fontFamily: 'Ubuntu'
                                      ),
                                    ),
                                    //SizedBox(height: 0), // Add space between the title and TextField
                                    TextField(
                                      decoration: InputDecoration(
                                        //hintText: 'Enter your text here',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 2),
                                        ),
                                        contentPadding: EdgeInsets.only(top: 25),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Consumer<PaymentProvider>(
                                      builder: (context, provider, child) {
                                        return DropdownButtonFormField<String>(
                                          decoration: InputDecoration(
                                            labelText: 'Select Bank',
                                            labelStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                                fontFamily: 'Ubuntu'
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black, width: 2),
                                            ),
                                            contentPadding: EdgeInsets.only(top: 20),
                                          ),
                                          value: provider.selectedBank,
                                          hint: Text('Select Bank'),
                                          isExpanded: true,
                                          items: provider.bank.entries.map((entry) {
                                            return DropdownMenuItem<String>(
                                              value: entry.value,
                                              child: Text(entry.key),
                                            );
                                          }).toList(),
                                          onChanged: (newValue) {
                                            provider.setSelectedBank(newValue); // Update selected state
                                          },
                                        );
                                      },
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      'Enter Destination Account',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54, fontFamily: 'Ubuntu'),
                                    ),
                                    //SizedBox(height: 0), // Add space between the title and TextField
                                    TextField(
                                      decoration: InputDecoration(
                                        //hintText: 'Enter your text here',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black, width: 2),
                                          ),
                                          contentPadding: EdgeInsets.only(top: 25)
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(
                                            context); // Close the bottom sheet
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => WithdrawalSuccessful()),
                                        );
                                      },
                                      child: Container(
                                        height: 58.h,
                                        width: 336.w,
                                        color: Color(0xFF170AF5),
                                        child: Center(
                                          child: Text(
                                            'Continue',
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
                        },
                      );
                    },
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFF0EFFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/card-receive.png'),
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF170AF5),
                                fontFamily: 'Ubuntu'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
