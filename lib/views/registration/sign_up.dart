import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/view_models/auth_provider.dart';
import 'package:kobo_app/views/registration/acct_num.dart';
import 'package:kobo_app/views/registration/welcome.dart';
import 'package:provider/provider.dart';

import '../boarding_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context); // Close the bottom sheet
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WelcomePage()),
              );
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
              fontSize: 20,
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
                SizedBox(height: 20,),
                Text(
                  'Carefully fill out your details, we ill generate an account for you.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                      fontFamily: 'Ubuntu'
                  ),
                ),
                SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FirstName',
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
                    SizedBox(height: 20,),
                    Text(
                      'Surname',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black45, fontFamily: 'Ubuntu'),
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
                      'Enter Email Address',
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
                    SizedBox(height: 20,),
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54, fontFamily: 'Ubuntu'),
                    ),
                    //SizedBox(height: 0), // Add space between the title and TextField
                    TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        //hintText: 'Enter your text here',
                        //prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
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
                      'Re-enter Password',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black45, fontFamily: 'Ubuntu'),
                    ),
                    //SizedBox(height: 0), // Add space between the title and TextField
                    TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        //hintText: 'Enter your text here',
                        //prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
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
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black54, fontFamily: 'Ubuntu'),
                    ),
                    //SizedBox(height: 0), // Add space between the title and TextField
                    TextField(
                      decoration: InputDecoration(
                        hintText: '(+234)',
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
                    Consumer<AuthProvider>(
                        builder: (context, provider, child){
                      return  DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'State',
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
                            contentPadding: EdgeInsets.only(top: 20)
                        ),
                        value: provider.selectedState,
                        items: provider.states.map((String state) {
                          return DropdownMenuItem<String>(
                            value: state,
                            child: Text(state),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          provider.selectState(newValue); // Update selected state
                        },
                      );
                        },
                    ),
                    SizedBox(height: 20),

                    // LGA Dropdown
                    Consumer<AuthProvider>(
                      builder: (context, provider, child) {
                        return DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                              labelText: 'LGA',
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
                              contentPadding: EdgeInsets.only(top: 20)
                          ),
                          value: provider.selectedLGA,
                          items: provider.lgas.map((String lga) {
                            return DropdownMenuItem<String>(
                              value: lga,
                              child: Text(lga),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            provider.selectLGA(newValue); // Update selected LGA
                          },
                          disabledHint: Text('Select a State first'),
                          isExpanded: provider.selectedState != null, // Disable if no state is selected
                        );
                      },
                    ),
                    SizedBox(height: 20,),
                    Consumer<AuthProvider>(
                      builder: (context, provider, child){
                        return  DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                              labelText: 'Gender',
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
                              contentPadding: EdgeInsets.only(top: 20)
                          ),
                          value: provider.selectedGender,
                          items: provider.gender.map((String state) {
                            return DropdownMenuItem<String>(
                              value: state,
                              child: Text(state),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            provider.selectGend(newValue); // Update selected state
                          },
                        );
                      },
                    ),
                    SizedBox(height: 20,),
                    Consumer<AuthProvider>(
                      builder: (context, dateProvider, child) {
                        return TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Date of Birth',
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
                            suffixIcon: Icon(Icons.calendar_today),
                          ),
                          readOnly: true, // Prevents manual input
                          controller: TextEditingController(
                            text: dateProvider.formattedDate, // Displays the selected date
                          ), // Always null because it doesn't have predefined items
                          onTap: () async {
                            // Open date picker when the dropdown is tapped
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );

                            if (pickedDate != null) {
                              context.read<AuthProvider>().selectDate(pickedDate);
                            }
                          },
                        );
                      },
                    ),
                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context); // Close the bottom sheet
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AcctnumPage()),
                        );},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 58.h,
                            width: 336.w,
                            color:Color(0xFF170AF5),
                            child: Center(
                              child: Text('Done',
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
