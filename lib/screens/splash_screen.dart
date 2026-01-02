import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_pic_notes/main.dart';
import 'package:uni_pic_notes/screens/home_screen.dart';
import 'package:uni_pic_notes/screens/view_screen.dart';

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
    Future.delayed(Duration(milliseconds: 1500),(){
      Get.off(()=>ViewScreen());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
