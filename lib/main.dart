import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text('Magic Ball'),
      ),
      body: MagicBall(),
    ),
  ));
}
class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicblalvar = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(onPressed: (){
          setState(() {
            magicblalvar = Random().nextInt(4)+1 ;
          });

        } ,child: Image.asset('images/ball$magicblalvar.png')) ,
      ),
    );
  }
}


