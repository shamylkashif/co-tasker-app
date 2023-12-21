import 'package:flutter/material.dart';
import 'package:untitled/common/background.dart';
import 'package:untitled/common/color.dart';

import '../profile/my_profile.dart';
import '../welcome/home-screen.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: apbar,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(icon:Icon(Icons.person), label: 'Profile'),],
        currentIndex: selectedIndex,
        selectedItemColor: dark,
        onTap: (index){
          setState(() {
            selectedIndex =index;
          });
          switch(index){
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHome()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
              break;
          }
        },
      ),
    );
  }
}
