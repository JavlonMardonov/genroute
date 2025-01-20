import 'package:flutter/material.dart';
import 'package:genroute/presentation/screens/home_screen.dart';
import 'package:genroute/presentation/screens/splash_screen.dart';
import 'package:genroute/presentation/screens/started_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        StartedScreen.routeName: (context) => StartedScreen(),
      },
    );
  }
}
