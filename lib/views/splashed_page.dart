
import 'package:flutter/material.dart';

import '../services/splached_service.dart';

class Spalshed_Screen extends StatefulWidget {
  const Spalshed_Screen({super.key});

  @override
  State<Spalshed_Screen> createState() => _Spalshed_ScreenState();
}

class _Spalshed_ScreenState extends State<Spalshed_Screen> {
  SplashServices splashservice=SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashservice.islogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(' Wellcome to you',style: TextStyle(fontSize: 10),),
      ),
    );
  }
}