import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/view_models/auth_provider.dart';
import 'package:kobo_app/views/boarding_page.dart';
import 'package:kobo_app/views/home.dart';
import 'package:kobo_app/views/registration/welcome.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context); // Close the bottom sheet
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomePage()),
          );
        },
          child: Icon(Icons.arrow_back_ios)),
      title: Text(
        'Log in',
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
            SizedBox(height: 30,),

            Text('You are almost done !, Continue to fill out your details.',style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
                fontFamily: 'Ubuntu'
            ),),
            SizedBox(height: 30,),
            Text(
              'Enter Account Number',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,  fontFamily: 'Ubuntu'),
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
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54,  fontFamily: 'Ubuntu'),
            ),
            //SizedBox(height: 0), // Add space between the title and TextField
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
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
            Row(
              children: [
                GestureDetector(
                onTap: () {
          context.read<AuthProvider>().toggleMark();
          },
          child: Container(
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: context.watch<AuthProvider>().isMarked
                    ? Color(0xFF170AF5)
                    : Colors.grey,
                width: 3.0,
              ),
              color: context.watch<AuthProvider>().isMarked
                  ? Colors.white
                  : Colors.transparent,
            ),
            child: Center(
              child: Icon(
                size: 15,
                context.watch<AuthProvider>().isMarked
                    ? Icons.check
                    : Icons.close,
                color: context.watch<AuthProvider>().isMarked
                    ? Color(0xFF170AF5)
                    : Colors.grey,
              ),
            ),
          ),
        ),
                SizedBox(width: 10,),
                Text('Remember me', style: TextStyle(
                  color: Color(0xFF170AF5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                    fontFamily: 'Ubuntu'
                ),),
                SizedBox(width: 100,),
                Text('Forgot Password?', style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                    fontFamily: 'Ubuntu'
                ),),
              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context); // Close the bottom sheet
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 58.h,
                    width: 336.w,
                    color:Color(0xFF170AF5),
                    child: Center(
                      child: Text('Log in',
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
      );
  }
}
