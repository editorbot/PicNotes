import 'package:flutter/material.dart';

import '../main.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
width: mq.width*.2,
          height: mq.height*.2,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blueGrey.withValues(alpha: .2),),
        )
      ),
    );
  }
}
