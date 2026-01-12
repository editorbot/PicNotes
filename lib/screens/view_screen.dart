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
    mq=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(

        child: Container(
          padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: SweepGradient(colors: const [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.cyan,
                Colors.blue,
                Colors.purple,
                Colors.red, // closes the loop
              ],
                // transform: GradientRotation(animation.value * 2 * math.pi),
              ).withOpacity(0.4),),
          child: Container(
          width: mq.width*.2,
            height: mq.height*.2,
            decoration: BoxDecoration(shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.8)
            ),
          ),
        )
      ),
    );
  }
}
