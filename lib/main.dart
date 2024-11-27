import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kobo_app/view_models/auth_provider.dart';
import 'package:kobo_app/view_models/boarding_provider.dart';
import 'package:kobo_app/view_models/bottomnavigation_provider.dart';
import 'package:kobo_app/view_models/payment_provider.dart';
import 'package:kobo_app/view_models/saving_provider.dart';
import 'package:kobo_app/views/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<BoardingProvider>(create: (_)=>BoardingProvider()),
        ChangeNotifierProvider<AuthProvider>(create: (_)=>AuthProvider()),
        ChangeNotifierProvider<ButtomnavigationProvider>(create: (_)=>ButtomnavigationProvider()),
        ChangeNotifierProvider<PaymentProvider>(create: (_)=>PaymentProvider()),
        ChangeNotifierProvider<SavingProvider>(create: (_)=>SavingProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),  // The design size of your UI
    minTextAdapt: true,  // Optional, adjust the text size automatically
    splitScreenMode: true,  // Optional, split screen support
    builder: (context, child) {
    return MaterialApp(
    home: SplashPage(),
    );
    });
  }
}
