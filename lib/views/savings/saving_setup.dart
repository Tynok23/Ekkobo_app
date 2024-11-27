import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/view_models/saving_provider.dart';
import 'package:kobo_app/views/savings/saving_successful.dart';
import 'package:provider/provider.dart';

import '../fund_wallet.dart';

class SavingSetup extends StatelessWidget {
  const SavingSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, Daniel',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                          fontFamily: 'Ubuntu'
                      ),
                    ),
                    Icon(Icons.notifications_none),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'It\'s Friday, Another day to Save',style: TextStyle(
                        fontFamily: 'Ubuntu'
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
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
                        color:
                            Color(0xFF120B8F), // Main color for the second layer
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
                                  color: Colors.white, fontFamily: 'Ubuntu'),
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
                                  color:
                                      Colors.white, // Color of the divider line
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
                        )),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        height: 27,
                        width: 81,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xFFF7487A),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 14.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero, // Sharp corners
                            ),
                          ),
                          onPressed: () {

                          },
                          child: Row(
                            mainAxisSize: MainAxisSize
                                .min, // To make the button fit the content
                            children: <Widget>[
                              Icon(Icons.compare_arrows,
                                  size: 12), // Add the icon here
                              SizedBox(
                                  width: 5), // Add spacing between icon and text
                              Text(
                                'Transfer',
                                style: TextStyle(
                                  fontSize: 10,
                                    fontFamily: 'Ubuntu'
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        height: 27,
                        width: 81,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xFFF0EFFF),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero, // Sharp corners
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              //barrierColor: Color(0xFFC2C1E2),
                              isScrollControlled: true,
                              backgroundColor: Colors
                                  .transparent, // Allows custom height control
                              builder: (context) {
                                return FractionallySizedBox(
                                  heightFactor:
                                      0.5, // Takes 50% of the screen height
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
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Fund Wallet',
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
                                            contentPadding:
                                                EdgeInsets.only(top: 25),
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
                                                  builder: (context) =>
                                                      FundWallet()),
                                            );
                                          },
                                          child: Container(
                                            height: 58,
                                            width: 336,
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
                                );
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize
                                .min, // To make the button fit the content
                            children: <Widget>[
                              Icon(Icons.account_balance_wallet_outlined,
                                  size: 12), // Add the icon here
                              SizedBox(
                                  width: 5), // Add spacing between icon and text
                              Text(
                                'Fund Wallet',
                                style: TextStyle(
                                  fontSize: 10,
                                    fontFamily: 'Ubuntu'
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Select how ou want to saveinto your kobo savings acount using the option below',
                  style:TextStyle(
                    color: Color(0xFFF7487A),
                      fontFamily: 'Ubuntu'
                  ) ,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Consumer<SavingProvider>(
                  builder: (context, provider, child){
                    return  DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          labelText: 'How will prefer to save',
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                              fontFamily: 'Ubuntu'
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          contentPadding: EdgeInsets.only(top: 20)
                      ),
                      value: provider.selectedFreq,
                      items: provider.sfreq.map((String freq) {
                        return DropdownMenuItem<String>(
                          value: freq,
                          child: Text(freq),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        provider.selectFrequency(newValue); // Update selected state
                      },
                    );
                  },
                ),
                SizedBox(height: 20,),
                Text(
                  'Amount',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black45,
                      fontFamily: 'Ubuntu'),
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
                SizedBox(height: 20,),
                SizedBox(height: 20,),
                Text(
                  'Day of the month',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black45,
                      fontFamily: 'Ubuntu'),
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
                SizedBox(height: 20,),
                SizedBox(height: 20,),
                Text(
                  'Prefereed Time',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black45,
                      fontFamily: 'Ubuntu'),
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
                SizedBox(height: 20,),
                SizedBox(height: 20,),
                Text(
                  'When do you want to start',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black45,
                      fontFamily: 'Ubuntu'),
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
                ),]),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context); // Close the bottom sheet
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SavingSuccessful()),
                    );
                  },
                  child: Container(
                    height: 58.h,
                    width: 336.w,
                    color: Color(0xFF170AF5),
                    child: Center(
                      child: Text(
                        'Save',
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
      ),
    );
  }
}
