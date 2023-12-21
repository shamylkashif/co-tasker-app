import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/profile/my_profile.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:untitled/services/plumber.dart';

import '../common/color.dart';
import '../my_orders/orders.dart';
import '../services/carpenter.dart';
import '../services/electrician.dart';
import '../services/house_clean.dart';
import '../services/house_renovate.dart';

import '../services/salon.dart';



void main(){
  runApp(MyHome());
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     /* routes: {
        '/home': (context)=> MyHome(),
        '/orders': (context)=> Orders(),
        '/profile': (context)=> MyProfile(),
      },*/
      home: HomeScreen(),

    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int dotPosition = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
          backgroundColor: light,
          body: Column(
               children: [
                 Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.transparent,
                  ),
                     child: Stack(
                       children: [
                          CarouselSlider(
                             items: [
                               _buildImage('assets/image_animate/Home.jpg'),
                               _buildImage('assets/image_animate/carpenter.jpg'),
                               _buildImage('assets/image_animate/electronic.jpg'),
                               _buildImage('assets/image_animate/salon.jpg'),
                          ],
                      options: CarouselOptions(
                               height: 200,
                               autoPlay: true,
                               enlargeCenterPage: true,
                               enableInfiniteScroll: true,
                               onPageChanged: (index, reason) {
                               setState(() {
                                 dotPosition = index.toInt();
                               });
                           },
                         ),
                       ),
                        Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                             child: DotsIndicator(
                                    dotsCount: 4,
                                    position: dotPosition,
                         ),
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 5,),
                 Text(
                   'Offered Services',
                   style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: dark,fontStyle: FontStyle.italic),
                 ),
                 SizedBox(height: 37,),
                 //Offered services back container start here
                 Row(
                   children: [
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Electrician() ));
                       },
                       child: Container(
                         margin: EdgeInsets.only(left: 10),
                         height: 135,
                         width: 100,
                         decoration: BoxDecoration(
                           color: apbar,
                           borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.white12,
                                   offset: Offset(3,3),
                                   blurRadius: 3
                               ),
                             ]
                         ),
                         child: Column(
                           children: [
                              Image.asset('assets/serviceicons/electricity.png',height: 80, width: 80,),
                              Text('Electrician',
                              style: TextStyle(color: dark, fontSize: 18, fontWeight: FontWeight.bold),
                              )
                           ],
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Carpenter()));
                       },
                       child: Container(
                         margin: EdgeInsets.only(left: 20),
                         height: 135,
                         width: 100,
                         decoration: BoxDecoration(
                           color: apbar,
                           borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.white12,
                                   offset: Offset(3,3),
                                   blurRadius: 3
                               ),
                             ]
                         ),
                         child: Column(
                           children: [
                             Image.asset('assets/serviceicons/carpentry.png',height: 80, width: 80,),
                             Text('Carpenter',
                               style: TextStyle(color: dark, fontSize: 19, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> HouseClean()));
                       },
                       child: Container(
                         margin: EdgeInsets.only(left: 20),
                         height: 135,
                         width: 100,
                         decoration: BoxDecoration(
                           color: apbar,
                           borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.white12,
                                   offset: Offset(3,3),
                                   blurRadius: 3
                               ),
                             ]
                         ),
                         child: Column(
                           children: [
                             Image.asset('assets/serviceicons/home-cleaning.png',height: 80, width: 80,),
                             Text('Cleaning',
                               style: TextStyle(color: dark, fontSize: 19, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 30,),
                 Row(
                   children: [
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> HouseRenovate()));
                       },
                       child: Container(
                         margin: EdgeInsets.only(left: 10),
                         height: 135,
                         width: 100,
                         decoration: BoxDecoration(
                           color: apbar,
                           borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.white12,
                                   offset: Offset(3,3),
                                   blurRadius: 3
                               ),
                             ]
                         ),
                         child: Column(
                           children: [
                             Image.asset('assets/serviceicons/home-renovation.png',height: 80, width: 80,),
                             Text('Renovation',
                               style: TextStyle(color: dark, fontSize: 18, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Salon()));
                       },
                       child: Container(
                         margin: EdgeInsets.only(left: 20),
                         height: 135,
                         width: 100,
                         decoration: BoxDecoration(
                           color: apbar,
                           borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.white12,
                                   offset: Offset(3,3),
                                   blurRadius: 3
                               ),
                             ]
                         ),
                         child: Column(
                           children: [
                             Image.asset('assets/serviceicons/lipstick.png',height: 80, width: 80,),
                             Text('Salon',
                               style: TextStyle(color: dark, fontSize: 19, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Plumber()));
                       },
                       child: Container(
                         margin: EdgeInsets.only(left: 20),
                         height: 135,
                         width: 100,
                         decoration: BoxDecoration(
                           color: apbar,
                           borderRadius: BorderRadius.circular(25),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.white12,
                               offset: Offset(3,3),
                               blurRadius: 3
                             ),
                           ]
                         ),
                         child: Column(
                           children: [
                             Image.asset('assets/serviceicons/plumber (2).png',height: 80, width: 80,),
                             Text('Plumber',
                               style: TextStyle(color: dark, fontSize: 19, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                 //Offered Services back Container ends here
               ],),
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

      ),
    );

  }
}
Widget _buildImage(String imagePath) {
    return ClipRRect(
      child: Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }


/*class ServiceContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final Widget destinationScreen; // Specify the destination screen for this service

  // Constructor
  const ServiceContainer({required this.title, required this.imagePath, required this.destinationScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destinationScreen,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
        padding: EdgeInsets.only(top: 5,bottom: 5,left: 8,right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.9),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Row(
            children: [
              Image.asset(imagePath, height: 45, width: 45, fit: BoxFit.cover),
              SizedBox(width: 12),
              Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            ],
          ),
        ),
      ),
    );
  }
}*/
/*Container(
                   padding: EdgeInsets.all(16),
                   color: Colors.transparent,
                   child: Column(
                     children: [
                       ServiceContainer(title: 'Electrician', imagePath: 'assets/serviceicons/electric-bulb.png', destinationScreen: Electrician()),
                       ServiceContainer(title: 'Carpenter',imagePath: 'assets/serviceicons/circular-saw.png', destinationScreen: Carpenter(),),
                       ServiceContainer(title: 'House Clean', imagePath: 'assets/serviceicons/clean-house.png', destinationScreen: HouseClean(),),
                       ServiceContainer(title: 'House Renovate', imagePath: 'assets/serviceicons/home-renovation.png', destinationScreen: HouseRenovate()),
                       ServiceContainer(title: 'Salon', imagePath: 'assets/serviceicons/salon.png', destinationScreen: Salon()),
                     ],
                   ),
                 ),*/


