import 'package:flutter/material.dart';
import 'package:kword1/JourneyFilesAndMapScreen/mapScreen.dart';

class JourneyScreen extends StatelessWidget {
  //const JourneyScreen({ Key? key }) : super(key: key);

  void pushMap(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){return MapScreen();},));
  }


  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Coins : "),
          TextButton(child: Card(child: Text("GRE Journyey"),),onPressed:(){
            return pushMap(context);
          }),
            
        
      ],),
    
    // child: mediaQ.orientation==Orientation.landscape || mediaQ.size.width>770 ? 
    // Text('Journey screen make a side scrolling list here', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)):
    // Text("Journey Screen",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

    );
  }
}