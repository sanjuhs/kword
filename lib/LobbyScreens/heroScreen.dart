import 'package:flutter/material.dart';

class HeroScreen extends StatefulWidget {
  //const HeroScreen({ Key? key }) : super(key: key);

  @override
  _HeroScreenState createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hero Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    );
  }
}