import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common/color.dart';

import 'log-in-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveToNextScreen(context: context);
  }
  Future<void> moveToNextScreen({required BuildContext context}) async {
    await Future.delayed(const Duration(seconds: 5 ));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LogInScreen()),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo (2).png',
          ),
          SizedBox(height: 10),
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              TypewriterAnimatedText(
                'Swipe right on talent. Your ideal worker is just an app away',
                textStyle: TextStyle(
                  color: dark,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
