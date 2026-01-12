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
        padding: const EdgeInsets.only(left: 18.0,top: 18),
        child: GridView.count(crossAxisCount: 2,
          childAspectRatio: 0.90/1,
          children:[ Card(

          clipBehavior: Clip.antiAlias,
          shadowColor: Colors.blueGrey,
          elevation: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset( "assets/Cloudia.jpg",fit: BoxFit.cover,),
                ),

                Text("data")
              ],
            )

          ),
        ]
        ),
      ),
    );

  }
}
