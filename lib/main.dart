import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_application_1/aplikasi/app/home.dart';
import 'package:flutter_application_1/aplikasi/app/kelas.dart';
import 'package:lottie/lottie.dart';

// Import halaman
import 'aplikasi/app/login.dart';
import 'aplikasi/app/register.dart';
import 'aplikasi/app/school.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Myngawi",
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Lottie.asset("assets/load.json"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Myngawiku",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(225, 128, 0, 0),
              ),
            ),
          ],
        ),
        nextScreen: const LoginPage(),
        splashIconSize: 200,
        backgroundColor: Colors.white,
        duration: 3000,
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/Home': (context) => const HomePage(),
        '/kelas': (context) => const KelasPage(),

      },
    );
  }
}
