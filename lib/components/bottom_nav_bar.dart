import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0 ),
          child: GNav (
            gap: 20,
            activeColor: Colors.white,
            color: Colors.grey,
            backgroundColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon:  Icons.shopping_cart,
                text: 'Cart',
              ),
              GButton(
                icon:  Icons.person,
                text: 'Profile',
              ),
            ],  
          ),
        ),
      );
      
    
  }
}
