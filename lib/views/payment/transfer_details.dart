import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/payment/transfer.dart';
import 'package:kobo_app/views/payment/transfer_successful.dart';

class TransferDetails extends StatefulWidget {
  const TransferDetails({super.key});

  @override
  State<TransferDetails> createState() => _TransferDetailsState();
}

class _TransferDetailsState extends State<TransferDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context); // Close the bottom sheet
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransferPage()),
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
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transfer Details',style: TextStyle(
                        fontFamily: 'Ubuntu',
                      fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'data',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'To',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'from',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bank',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'from',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'from',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Service charge:',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'from',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount:',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'from',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transfer Description',
                      style: TextStyle(color: Color(0xFF888888),fontFamily: 'Ubuntu'),
                    ),
                    Text(
                      'from',
                      style: TextStyle(color: Color(0xFF353535),fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                DottedDivider(),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: SizedBox(
                            width: 331, // Set your desired width
                            height: 501, // Set your desired height
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Transfer Authorization',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                        fontFamily: 'Ubuntu',
                                      color: Color(0xFF353535),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Confirm N38,500 funds transfer from 6033294030 to Esivue Daniel',
                                    style: TextStyle(fontSize: 16, fontFamily: 'Ubuntu',
                                      color: Color(0xFF888888),),
                                    textAlign: TextAlign.center,

                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  TextFormField(
                                    //controller: _codeController,
                                    keyboardType: TextInputType.number,
                                    maxLength: 4,
                                    decoration: InputDecoration(
                                      labelText: '4-Digit Code',
                                      border: OutlineInputBorder(),
                                      counterText:
                                      '', // Removes the default counter text
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
                                                TransferSuccessful()),
                                      );
                                    },
                                    child: Container(
                                      height: 58.h,
                                      width: 260.w,
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
                                  SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(
                                          context); // Close the bottom sheet
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TransferDetails()),
                                      );
                                    },
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        color: Color(0xFFF7487A),
                                          fontFamily: 'Ubuntu'
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
                    height: 58.h,
                    width: 336.w,
                    color: Color(0xFF170AF5),
                    child: Center(
                      child: Text(
                        'Submit',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context); // Close the bottom sheet
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TransferPage()),
                        );
                      },
                      child: Text('cancel',
                          style: TextStyle(
                            color: Color(0xFFF7487A),
                              fontFamily: 'Ubuntu'
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DottedDivider extends StatelessWidget {
  final Color color;
  final double dotWidth;
  final double dotHeight;
  final double spaceBetweenDots;

  DottedDivider({
    this.color = Colors.grey,
    this.dotWidth = 2.0,
    this.dotHeight = 2.0,
    this.spaceBetweenDots = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(50, (index) {
        return Container(
          width: dotWidth,
          height: dotHeight,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.symmetric(horizontal: spaceBetweenDots / 2),
        );
      }),
    );
  }
}
