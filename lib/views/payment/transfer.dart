import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/view_models/payment_provider.dart';
import 'package:kobo_app/views/payment/payment_page.dart';
import 'package:kobo_app/views/payment/transfer_details.dart';
import 'package:provider/provider.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context); // Close the bottom sheet
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              );
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Transfer',
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text(
                  'Source Account',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
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
                Consumer<PaymentProvider>(
                  builder: (context, provider, child) {
                    return DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Select Bank',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                            fontFamily: 'Ubuntu',
                          color: Colors.black54,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                          contentPadding: EdgeInsets.only(top: 2, bottom: 2),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
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
                Text(
                  'Enter Amount',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
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
                Text(
                  'Transaction Description',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
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
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context); // Close the bottom sheet
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferDetails()),
                    );
              },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 58.h,
                        width: 336.w,
                        color:Color(0xFF170AF5),
                        child: Center(
                          child: Text('Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                                fontFamily: 'Ubuntu'
                            ),
                          ),
                        ),
                      ),
                    ],
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
