import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/account/account.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context); // Close the bottom sheet
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountPage()),
              );
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Contact Us',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 123.h,
                    width: 306.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFDDD9D9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('You can meet us',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF888888),
                                fontFamily: 'Ubuntu'
                            ),),
                            SizedBox(height: 5,),
                            Text('Our office : No. 5 New Ibadan , off Tanimot road, Ibadan, Oyo State.  Ibadan , off Tanimot road, Ibadan, Oyo State',
                              style:TextStyle(
                                  fontFamily: 'Ubuntu'
                              ) ,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Text(
                'Phone Number',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
                    fontFamily: 'Ubuntu'),
              ),
              //SizedBox(height: 0), // Add space between the title and TextField
              TextField(
                controller: TextEditingController(text: "+234 7035 5852 61"),
                enabled: false,
                decoration: InputDecoration(
                  //hintText: 'Enter your text here',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    contentPadding: EdgeInsets.only(top: 25),
                    suffixIcon: Icon(Icons.phonelink_ring_outlined, color: Color(0xFF170AF5),size: 18,),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Email Address',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
                    fontFamily: 'Ubuntu'),
              ),
              //SizedBox(height: 0), // Add space between the title and TextField
              TextField(
                controller: TextEditingController(text: "Kobos@gmail.com"),
                enabled: false,
                decoration: InputDecoration(
                  //hintText: 'Enter your text here',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  contentPadding: EdgeInsets.only(top: 25),
                  suffixIcon: Icon(Icons.phonelink_ring_outlined, color: Color(0xFF170AF5),size: 18,),
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );},
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    border: Border.all(
                      color: Color(0xFF170AF5), // Border color
                      width: 2.0,        // Border width
                    ),
                    ),
                  height: 58.h,
                  width: 336.w,
                  child: Center(
                    child: Text('Close',
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

            ],
          ),
        ),
      ),
    );
  }
}
