import 'package:flutter/material.dart';
import 'package:flutter_shopping_shoes/components/bottom_nav_bar.dart';
import 'package:flutter_shopping_shoes/pages/cart_page.dart';
import 'package:flutter_shopping_shoes/pages/profile_page.dart';
import 'package:flutter_shopping_shoes/pages/shop_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); 
} 

class _HomePageState extends State<HomePage> {


  //  this selected index is to control the bottom nav bar 
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar 
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),

    //profile page
    const ProfilePage(),
    ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();    
        } ,
      ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: 
              Column(
                children: [
                  Image.asset('lib/Images/goldstarlogo.png', height: 80, color: Colors.white,),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white,),
              title: Text('Settings', style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.white,),
              title: Text('Contact Us', style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text('Logout', style: TextStyle(color: Colors.white),),
            ),  
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      
      
    );
  }
}