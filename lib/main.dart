// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Phone Screen Scroll Effect',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Scrollable Phone Screens'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // Scroll controllers for the three containers
//   final ScrollController _leftController = ScrollController();
//   final ScrollController _middleController = ScrollController();
//   final ScrollController _rightController = ScrollController();

//   @override
//   void initState() {
//     super.initState();

//     // Synchronize the scrolling between the left and right screens
//     _middleController.addListener(() {
//       double offset = _middleController.offset;
//       _leftController.jumpTo(offset);   // Scroll left screen up
//       _rightController.jumpTo(offset);  // Scroll right screen up
//     });
//   }

//   @override
//   void dispose() {
//     _leftController.dispose();
//     _middleController.dispose();
//     _rightController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Stack(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Left Phone Screen (scroll up)
//               Expanded(
//                 child: SingleChildScrollView(
//                   controller: _leftController,
//                   child: _buildPhoneScreen(
//                     screenColor: Colors.black12,
//                     label: 'Left Screen',
//                     reverseScroll: false,
//                   ),
//                 ),
//               ),
//               // Middle Phone Screen (reverse scroll direction)
//               Expanded(
//                 child: SingleChildScrollView(
//                   controller: _middleController,
//                   reverse: true, // Scroll in the opposite direction
//                   child: _buildPhoneScreen(
//                     screenColor: Colors.white12,
//                     label: 'Middle Screen',
//                     reverseScroll: true,
//                   ),
//                 ),
//               ),
//               // Right Phone Screen (scroll up)
//               Expanded(
//                 child: SingleChildScrollView(
//                   controller: _rightController,
//                   child: _buildPhoneScreen(
//                     screenColor: Colors.black12,
//                     label: 'Right Screen',
//                     reverseScroll: false,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Function to build each phone screen container
//   Widget _buildPhoneScreen({
//     required Color screenColor,
//     required String label,
//     required bool reverseScroll,
//   }) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 2, // Makes the entire container scrollable
//       margin: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: screenColor,
//         borderRadius: BorderRadius.circular(40),
//         border: Border.all(
//           color: Colors.black,
//           width: 5.0,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.7),
//             spreadRadius: 5,
//             blurRadius: 10,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.phone_android,
//               size: 100,
//               color: Colors.white.withOpacity(0.8),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               label,
//               style: const TextStyle(
//                 fontSize: 24,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube Replica',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}


