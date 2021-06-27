import 'package:flutter/material.dart';
import 'package:kword1/LobbyScreens/InventoryCraftingScreen.dart';
import 'package:kword1/LobbyScreens/heroScreen.dart';
import 'package:kword1/LobbyScreens/journeyScreen.dart';
import 'package:kword1/LobbyScreens/multiplayerScreen.dart';

class LobbyScreen extends StatefulWidget {
  // const LobbyScreen({ Key? key }) : super(key: key);

  @override
  _LobbyScreenState createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  int _selectedIndex = 1;  
  static  List<Widget> _widgetOptions = <Widget>[
    // Text('Multiplayer Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    MultiplayerScreen(),
    JourneyScreen(), 
    HeroScreen(), 
    InventoryCraftingScreen(),  
  ];
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(  
      // appBar: AppBar(  
      //   title: const Text('Flutter BottomNavigationBar Example'),  
      //     backgroundColor: Colors.green  
      // ),  
      body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),  
      bottomNavigationBar: BottomNavigationBar(  
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            label: ('Multiplayer'),  
            backgroundColor: Colors.yellow.shade800, //0xFFF9A825, 
          ),
          BottomNavigationBarItem(  
            icon: Icon(Icons.alt_route_outlined),  
            label: 'Journey',  
            backgroundColor: Colors.blue,  
          ),
          BottomNavigationBarItem(  
            icon: Icon(Icons.accessibility_new_sharp),  
            label: 'Profile',  
            backgroundColor: Colors.cyan,  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.hardware),  
            label: ('Inventory'),  
            backgroundColor: Colors.green.shade300 ,
          ),  
   
        ],  
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.black,  
        iconSize: 40,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    ); 
    
    // Scaffold(
    //   body: Container(
    //     child:Text("default laobby - going to Map Screen")
    //   ),
    // );
  }
}