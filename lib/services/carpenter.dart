import 'package:flutter/material.dart';
import '../common/color.dart';

class Carpenter extends StatefulWidget {
  const Carpenter({super.key});

  @override
  State<Carpenter> createState() => _CarpenterState();
}

class _CarpenterState extends State<Carpenter> {
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
                  child: Text('Carpenter services', style: TextStyle(color: dark,fontSize: 25,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
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
                                'assets/containers/carpenter.jpeg',
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
                                    child: Text('Carpenter Work',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Charges vary acc. to work',style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inscpection Charges, Rs 500',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
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
                                'assets/containers/door.png',
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
                                    child: Text('Door Installation',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Per Door changes acc. to material',
                
                                    style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inspection Charges Rs 500',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
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
                                'assets/containers/drawer.jpeg',
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
                                    child: Text('Drawer Repairing',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Vary After Inspection',style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inspection Charges Rs 1000',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
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
                                'assets/containers/lock.png',
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
                                    child: Text('Door Lock Repairing',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Vary After Inspection',style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inspection Charges Rs 750',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
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
                                'assets/containers/polish.jpeg',
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
                                    child: Text('Furniture Polishing',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Vary After Inspection',style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inspection Charges Rs 750',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
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
                                'assets/containers/wardrobe.jpeg',
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
                                    child: Text('Build or Repair Wardrobe',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Vary After Inspection',style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inspection Charges Rs 750',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
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
                                    child: Text('Repair Sofa',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style:TextStyle(color: dark,fontSize: 19,fontWeight: FontWeight.bold ) ,),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Vary After Inspection',style:TextStyle(color: dark,fontSize: 14) ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7,top: 5),
                                  child: Text('Inspection Charges Rs 750',style:TextStyle(color: dark,fontSize: 14,fontWeight: FontWeight.bold) ,),
                                )

                              ]
                          ),
                        ],
                      ),
                    ),
                
                
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


