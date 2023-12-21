import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common/color.dart';

import 'home-screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset("assets/Untitled design.png",fit: BoxFit.cover,
                    )),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 155),
                child: Image.asset('assets/arrow.png',  ),
              ),
             Center(
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 170,right:120),
                     child: Text('Welcome Back!',
                       style: TextStyle(color: dark,fontSize: 30,fontWeight: FontWeight.bold ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:10 ,right:58),
                     child: Text('Enter Your Username & Password',
                       style: TextStyle(color: dark,fontSize: 18, ),
                     ),
                   ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                         children: [
                             SizedBox(height: 25,),
                               TextField(
                                 controller: _emailController,
                                 style: const TextStyle(color: dark,) ,
                                 decoration: const InputDecoration(
                                   labelText: 'Username',
                                   labelStyle: TextStyle(color: dark)
                                 ) ,
                               ),
                           SizedBox(height: 20,),
                           TextField(
                             controller: _passwordController,
                             style: const TextStyle(color: dark,) ,
                             decoration: const InputDecoration(
                                 labelText: 'Password',
                                 labelStyle: TextStyle(color: dark)
                             ) ,
                           ),
                           SizedBox(height: 30,),
                           InkWell(
                             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ));

                             /*FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text,
                                   password: _passwordController.text).then((value) async {
                                     print('Login Success');
                                     var userMap = {
                                       "email" : _emailController.text,
                                       "password" : _passwordController.text,
                                     }; await FirebaseFirestore.instance.collection("admin").add(userMap);

                                 } ).onError((error, stackTrace) {
                                   print('login');
                                   Navigator.of(context).pop();
                               }) ;*/
                             },
                             child: Container(
                               height: 45,
                               width: 120,
                               decoration: BoxDecoration(
                                 color: dark,
                                 borderRadius: BorderRadius.all(Radius.circular(35))
                               ),
                               child: Center(child: Text('Log In',style: TextStyle(color: Colors.white,fontSize: 16), )),
                             ),
                           ),
                           SizedBox(height: 20,),
                           Text('Forgot Password ?',
                             style:TextStyle(color: dark,fontSize: 12,) ,)
                         ],
                          ),
                      ),
                    ),
                  ),
                 ],
               ),
             ),
            ],
          ),
        ),
    );
  }
}
