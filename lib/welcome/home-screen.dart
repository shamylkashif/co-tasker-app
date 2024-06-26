import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../common/color.dart';
import '../my_orders/orders.dart';
import '../services/carpenter.dart';
import '../services/electrician.dart';
import '../services/house_clean.dart';
import '../services/house_renovate.dart';
import '../services/plumber.dart';
import '../services/salon.dart';


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
    return Scaffold(
       backgroundColor: light,
       body: SafeArea(
         child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
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
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: dark),
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
                            SizedBox(height: 10,),
                             Image.asset('assets/serviceicons/electricity.png',height: 55, width: 55,),
                             SizedBox(height: 15,),
                             Text('Electrician',
                             style: TextStyle(color: dark, fontSize: 17, ),
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
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: dark),
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
                            SizedBox(height: 10,),
                            Image.asset('assets/serviceicons/carpentry.png',height: 55, width: 55,),
                            SizedBox(height: 15,),
                            Text('Carpenter',
                              style: TextStyle(color: dark, fontSize: 17, ),
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
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: dark),
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
                            SizedBox(height: 10,),
                            Image.asset('assets/serviceicons/home-cleaning.png',height: 55, width: 55,),
                            SizedBox(height: 15,),
                            Text('Cleaning',
                              style: TextStyle(color: dark, fontSize: 17, ),
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
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: dark),
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
                            SizedBox(height: 10,),
                            Image.asset('assets/serviceicons/home-cleaning.png',height: 55, width: 55,),
                            SizedBox(height: 15,),
                            Text('Renovation',
                              style: TextStyle(color: dark, fontSize: 17, ),
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
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: dark),
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
                            SizedBox(height: 10,),
                            Image.asset('assets/serviceicons/lipstick.png',height: 55, width: 55,),
                            SizedBox(height: 15,),
                            Text('Salon',
                              style: TextStyle(color: dark, fontSize: 17, ),
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
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: dark),
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
                            SizedBox(height: 10,),
                            Image.asset('assets/serviceicons/plumber (2).png',height: 55, width: 55,),
                            SizedBox(height: 15,),
                            Text('Plumber',
                              style: TextStyle(color: dark, fontSize: 17, ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //Offered Services back Container ends here
              ],),
       ),
          );

  }
}
Widget _buildImage(String imagePath) {
    return ClipRRect(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
}

