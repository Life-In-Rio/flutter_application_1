// import 'dart:async';

// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacementNamed(context, '/login');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/Myku.PNG", height: 300, width: 300),
//             Text(
//               "The Jomokers",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.amberAccent,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
