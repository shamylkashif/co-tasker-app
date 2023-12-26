import 'package:flutter/material.dart';
import '../common/color.dart';

class HouseClean extends StatefulWidget {
  const HouseClean({super.key});

  @override
  State<HouseClean> createState() => _HouseCleanState();
}

class _HouseCleanState extends State<HouseClean> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: light,
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 15),
                  child: InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_outlined, color: dark,size: 25,)),
                ),
                const SizedBox(width: 30,),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Cleaning services', style: TextStyle(color: dark,fontSize: 25,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    color: container,
                    border: Border.all(color: dark,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/containers/sofa.jpeg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4,),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 7),
                              child: Container(
                                width: 150,
                                child: Text('Sofa Cleaning',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Vary acc. to Size and Type of sofa',style:TextStyle(color: dark,fontSize: 14) ,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Inspection Charges Rs 100',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
                            )

                          ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    color: container,
                    border: Border.all(color: dark,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/containers/mattress.jpeg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4,),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 7),
                              child: Container(
                                width: 150,
                                child: Text('Mattress Cleaning',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Per Mattress',style:TextStyle(color: dark,fontSize: 14) ,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Rs. 2500',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
                            )

                          ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    color: container,
                    border: Border.all(color: dark,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/containers/house.jpeg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4,),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 7),
                              child: Container(
                                width: 150,
                                child: Text('Ceiling Fan Installation',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Per Fan',style:TextStyle(color: dark,fontSize: 14) ,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Rs. 1000',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
                            )

                          ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    color: container,
                    border: Border.all(color: dark,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/containers/Screenshot (53).png',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4,),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 7),
                              child: Container(
                                width: 150,
                                child: Text('Ceiling Fan Repairing',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Visit And Inspection Charges',style:TextStyle(color: dark,fontSize: 14) ,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7,top: 5),
                              child: Text('Rs. 1000',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
                            )

                          ]
                      ),
                    ],
                  ),
                ),

              ],
            ),


          ],
        ),
      ),
    );
  }
}

