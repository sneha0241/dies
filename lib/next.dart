import 'dart:math';

import 'package:flutter/material.dart';
class next extends StatefulWidget {
  const next({Key? key}) : super(key: key);

  @override
  State<next> createState() => _nextState();
}

class _nextState extends State<next> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void ChangeDicenumber() {
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Center(child: Text('dice')),),
      body: Row(children: [
        Expanded(child: TextButton(onPressed: (ChangeDicenumber) , child: Image.asset("photo/dice$leftdicenumber.jpeg")
        )
        ),
        
        Expanded(child: TextButton(onPressed: (ChangeDicenumber) , child: Image.asset("photo/dice$rightdicenumber.jpeg")
        )
        ),

      ],),);
  }
}
