import 'package:flutter/material.dart';
import 'package:kword1/lobbyScreen.dart';
import 'package:kword1/registerationScreen.dart';

class WelcomeScreen extends StatelessWidget {
  //const WelcomeScreen({ Key? key }) : super(key: key);
  final bool a;
  WelcomeScreen(this.a, context);
  void registered(bool a, context) {
    if (a == true) {
      //return Navigator.replace(context, oldRoute: oldRoute, newRoute: newRoute);
      Navigator.pop(context);
      //Navigator.push(context, RegisterationScreen())
        Navigator.of(context).push(MaterialPageRoute(
        builder: (_) {
          return LobbyScreen();
        },
      )
      );
    } else {
      //return Navigator.replace(context, oldRoute: oldRoute, newRoute: newRoute);
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
        builder: (_) {
          return RegisterationScreen();
        },
      )
      );
    }
  }

   
  
  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context);
    return Container(
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('welcomeScreenBg.png' ,),fit: BoxFit.cover )),
      child: TextButton(
        child: Container( 
          
          padding: EdgeInsets.all(10),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ mediaQ.orientation==Orientation.landscape ?
                  Text("KnightWord , start game click to begin",style: TextStyle(fontSize: 45)):
                  Text("KnightWord",style: TextStyle(fontSize: 36)),
                  Text(
                    "Click any where to begin",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
        onPressed: () {
          return registered(a, context);
        },
      ),
    );
  }
}
