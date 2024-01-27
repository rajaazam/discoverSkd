import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../views/auth/login_page.dart';

class SplashServices{
 void islogin(BuildContext context){
   final auth= FirebaseAuth.instance;
   final user = auth.currentUser;
   if(user !=null){
    Timer(Duration(seconds: 3),(() {
      // Navigator.push(context, 
      // MaterialPageRoute(builder: (context) => PostScreen()));
    })
    
     );
   }else{
     Timer(Duration(seconds: 3),(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }) );
   }
 }

}