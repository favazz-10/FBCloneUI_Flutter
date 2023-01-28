import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget{
  const BlueTick({super.key});

  @override
  Widget build(BuildContext context) {
    return  Icon(
      Icons.verified,
      color: Colors.blue,
      size: 22,
    );
  }

}