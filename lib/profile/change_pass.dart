import 'package:flutter/material.dart';

import '../common/color.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90,right: 15),
            child: Text('Re-set your Password',
              style: TextStyle(color: dark, fontSize: 25,fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
                decorationThickness: 2.0,),),
          ),
          SizedBox(height: 40,),
          Center(
            child: Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: dark),
              ),
              child: TextField(
                style: const TextStyle(color: dark),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Current Password',
                  hintStyle: TextStyle(color: dark, fontSize: 18, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: dark),
              ),
              child: TextField(
                style: const TextStyle(color: dark),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'New Password',
                  hintStyle: TextStyle(color: dark, fontSize: 18, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: dark),
              ),
              child: TextField(
                style: const TextStyle(color: dark),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Re-Enter Current Password',
                  hintStyle: TextStyle(color: dark, fontSize: 18, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ),

          SizedBox(height: 35,),

          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: dark,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text('Update Password',
              style: TextStyle(color: light,fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
