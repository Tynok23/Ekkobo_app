import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/views/account/account.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

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
          'Profile',
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Surname',
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
                  'FirstName',
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
                  'Othernames',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54
                    , fontFamily: 'Ubuntu'),
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
                  'Mobile Number',
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
                  'Password',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
                    fontFamily: 'Ubuntu',),
                ),
                //SizedBox(height: 0), // Add space between the title and TextField
                TextField(
                  obscureText:true, //_isPasswordVisible,
                  decoration: InputDecoration(
                    //hintText: 'Enter your text here',
                    //prefixIcon: Icon(Icons.lock),
                    //   suffixIcon: IconButton(
                    //     icon: Icon(
                    //       _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    //     ),
                    //     onPressed: () {
                    //       setState(() {
                    //         _isPasswordVisible = !_isPasswordVisible;
                    //       });
                    //     },
                     // ),
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
                  'Password',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,
                      fontFamily: 'Ubuntu'),
                ),
                //SizedBox(height: 0), // Add space between the title and TextField
                TextField(
                  obscureText:true, //_isPasswordVisible,
                  decoration: InputDecoration(
                    //hintText: 'Enter your text here',
                    //prefixIcon: Icon(Icons.lock),
                    //   suffixIcon: IconButton(
                    //     icon: Icon(
                    //       _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    //     ),
                    //     onPressed: () {
                    //       setState(() {
                    //         _isPasswordVisible = !_isPasswordVisible;
                    //       });
                    //     },
                    // ),
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
                Text('To change your account information. Please send an email to Kobos@gmail.com',
            
                    style: TextStyle(
                      color: Color(0xFFF7487A),
                        fontFamily: 'Ubuntu'
                    ),
                textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                GestureDetector(
                  // onTap: (){
                  //   Navigator.pop(context); // Close the bottom sheet
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => AcctnumPage()),
                  //   );},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 58.h,
                        width: 336.w,
                        color:Color(0xFF170AF5),
                        child: Center(
                          child: Text('Update Profile',
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
