import 'package:flutter/material.dart';
import 'package:kobo_app/views/account/account_screen.dart';
import 'package:kobo_app/views/payment/payment_page.dart';
import 'package:kobo_app/views/savings/savin_page.dart';
import 'package:provider/provider.dart';
import '../view_models/bottomnavigation_provider.dart';
import 'account/account.dart';
import 'home_screen.dart';

class HomePage extends StatelessWidget {

  final List<Widget> _pages = [
    HomeScreen(),
    PaymentPage(),
    SavingPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ButtomnavigationProvider>(
        builder: (context, provider, child) {
          // Display the selected page based on the current index
          return _pages[provider.currentIndex];
        },
      ),
      bottomNavigationBar: Consumer<ButtomnavigationProvider>(
        builder: (context, provider, child) {
          return BottomNavigationBar(
            backgroundColor: Color(0xFFF0EFFF),  // Background color of the bar
            selectedItemColor: Color(0xFF170AF5),   // Color for the selected item
            //unselectedItemColor: Color(0xFFF0EFFF), // Color for unselected items
            currentIndex: provider.currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              provider.setIndex(index); // Update index using Provider
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'Payment',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                label: 'Savings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
              ),
            ],
          );
        },
      ),
    );
  }
}

