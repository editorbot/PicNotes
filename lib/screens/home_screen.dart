import 'package:flutter/material.dart';
import 'package:uni_pic_notes/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Notes"),
        backgroundColor: Colors.blueGrey,
      ) ,


      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(

        shadowColor: Colors.blueGrey,
        elevation: 3,
          child: Image.asset( "assets/Cloudia.jpg")

        ),
      ),
    );

  }
}
