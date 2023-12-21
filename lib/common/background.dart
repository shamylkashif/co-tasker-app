import 'package:flutter/material.dart';
import 'package:untitled/common/color.dart';

class Background extends StatelessWidget {
  Background({
    Key? key,
    this.top = 0,
    this.right = 0,
    this.left = 0,
    this.bottom = 0,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final double? bottom, top, right, left;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: light,
          ),
          child: child, // Include the provided child widget here
        ),
      ),
    );
  }
}

