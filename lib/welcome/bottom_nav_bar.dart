import 'package:flutter/material.dart';
import '../common/color.dart';
import '../my_orders/orders.dart';
import '../profile/my_profile.dart';
import 'home-screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {

  var page = [
    HomeScreen(),
    Orders(),
    MyProfile()
  ];

  int indexOfPage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[indexOfPage],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF6FD3ED),
        onTap: (int index){
          setState(() {
            indexOfPage = index;
          });
        },
          currentIndex : indexOfPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: dark,),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined,color: dark,),
              label: "Order"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: dark,),
              label: "Profile"
          ),
        ],

      ),
    );
  }
}
