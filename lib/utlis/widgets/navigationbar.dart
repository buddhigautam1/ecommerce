

import 'package:ecommerce/utlis/pages/cart.dart';
import 'package:ecommerce/utlis/pages/homepage.dart';
import 'package:ecommerce/utlis/pages/inboxpages.dart';
import 'package:ecommerce/utlis/pages/profile.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;
  final screens =[
     HomePage(),
    const InboxPage(),
    const  CartPage(),
    const ProfilePage()


  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          
          
           borderRadius: BorderRadius.circular(32),
          child: Container(
            height: 80,
            
            decoration: const BoxDecoration(
              
              
              gradient: LinearGradient(colors: [
                Colors.blue, Colors.white, Colors.green
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                ),
                
            ),
            child: NavigationBarTheme(
              
                data: NavigationBarThemeData(
                indicatorColor: Colors.blue[200],
                //labelTextStyle: MaterialStateProperty.all(
                 //fontWeight: fon
            
                //)
              ),
              child: NavigationBar(
                backgroundColor: Colors.transparent,
                  selectedIndex: index,
                  onDestinationSelected: (index) =>
                  setState(() =>
                    this.index = index
                  ),
                  animationDuration: Duration(seconds: 1),
                  
                  labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
                  destinations:  const [
                  
                   NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home_filled), 
                    label: "Home",
                  ),
                   NavigationDestination(
                    icon: Icon(Icons.group_outlined),
                    selectedIcon: Icon(Icons.group), 
                    label: "Friends",
                  ),
                   NavigationDestination(
                    icon: Icon(Icons.favorite_outline),
                    selectedIcon: Icon(Icons.favorite), 
                    label: "favourites",
                  ),
                   NavigationDestination(
                    icon: Icon(Icons.chat_outlined),
                    selectedIcon: Icon(Icons.chat), 
                    label: "Inbox",
                  )
                ],
                ),
            ),
          ),
        ),
      ),

    );
  }
}