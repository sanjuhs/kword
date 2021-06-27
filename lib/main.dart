import 'package:flutter/material.dart';
import 'package:kword1/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final bool registercheck = true;
  bool registerCheck(){
    print(registercheck);
    return registercheck;
  }
  
  // Future<String> get _localPath async {
  // final directory = await getApplicationDocumentsDirectory();
  // return directory.path;
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: WelcomeScreen(registerCheck(),context),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// void main() {
//   runApp(MaterialApp(home: SimpleAnimation()));
// }

// class SimpleAnimation extends StatelessWidget {
//   //const SimpleAnimation({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: RiveAnimation.network(
//           'https://cdn.rive.app/animations/vehicles.riv',
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';
// import 'package:rive_example/custom_controller.dart';
// import 'package:rive_example/play_one_shot_animation.dart';
// import 'package:rive_example/play_pause_animation.dart';
// import 'package:rive_example/example_state_machine.dart';
// import 'package:rive_example/liquid_download.dart';
// import 'package:rive_example/little_machine.dart';
// import 'package:rive_example/simple_animation.dart';
// import 'package:rive_example/state_machine_skills.dart';

// void main() => runApp(MaterialApp(
//       title: 'Navigation Basics',
//       home: Home(),
//     ));

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Rive Examples'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton(
//               child: const Text('Simple Animation'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const SimpleAnimation(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Play/Pause Animation'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const PlayPauseAnimation(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Play One-Shot Animation'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const PlayOneShotAnimation(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Button State Machine'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const ExampleStateMachine(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Skills Machine'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const StateMachineSkills(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Little Machine'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const LittleMachine(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Liquid Download'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const LiquidDownload(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               child: const Text('Custom Controller - Speed'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (context) => const SpeedyAnimation(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }