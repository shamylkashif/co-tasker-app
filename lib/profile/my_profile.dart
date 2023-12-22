import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../common/color.dart';
import 'change_pass.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String imageUrl = "";
  void pickUploadProfilePic() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 120,
      maxWidth: 120,
      imageQuality: 90,
    );

    Reference ref = FirebaseStorage.instance
        .ref().child("profilepic(1).jpg");

    await ref.putFile(File(image!.path));

    ref.getDownloadURL().then((value) async {
     print(value);
     setState(() {
       imageUrl = value;
     });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 60,left: 5,right: 5),
            child: Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                color: apbar,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                     GestureDetector(
                         onTap: (){
                           pickUploadProfilePic();
                         },
                         child: imageUrl == "" ? Image.asset('assets/profile.png'
                         ): Image.network(imageUrl),

                     ),
                     SizedBox(height: 5,),
                     Text('Username',
                     style: TextStyle(color:dark,fontSize: 30,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic ),
                     )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(color: dark,) ,
              decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Your Name',
                  labelStyle: TextStyle(color: dark,fontSize: 20,fontWeight: FontWeight.bold)
              ) ,
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(color: dark,) ,
              decoration: const InputDecoration(
                  labelText: 'Gender',
                  hintText: 'Your Gender',
                  labelStyle: TextStyle(color: dark,fontSize: 20,fontWeight: FontWeight.bold)
              ) ,
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(color: dark,) ,
              decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: '030x-1234567',
                  labelStyle: TextStyle(color: dark,fontSize: 20,fontWeight: FontWeight.bold)
              ) ,
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(color: dark,) ,
              decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'e.g, abc@gmail.com',
                  labelStyle: TextStyle(color: dark,fontSize: 20,fontWeight: FontWeight.bold)
              ) ,
            ),
          ),
          SizedBox(height: 8,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangePass()));
            },
            child: Container(
              height: 65,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: apbar
              ),
              child: Center(
                child: Text('Change Password',
                style: TextStyle(color: dark,fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
