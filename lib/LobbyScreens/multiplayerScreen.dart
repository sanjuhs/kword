import 'package:flutter/material.dart';

class MultiplayerScreen extends StatefulWidget {
  //const MultiplayerScreen({ Key? key }) : super(key: key);

  @override
  _MultiplayerScreenState createState() => _MultiplayerScreenState();
}

class _MultiplayerScreenState extends State<MultiplayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Multiplayer Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          Icon(Icons.precision_manufacturing_outlined, size: 200, color: Colors.orangeAccent,),
          Text('Under Construction', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}