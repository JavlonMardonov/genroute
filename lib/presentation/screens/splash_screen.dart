import 'package:flutter/material.dart';
import 'package:genroute/presentation/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9775FA),
      body: FutureBuilder(
          future: Future.delayed(
            Duration(seconds: 2),
          ).then(
            (value) => Navigator.of(context).pushReplacementNamed(
              HomeScreen.routeName,
            ),
          ),
          builder: (context, snapshot) {
            return Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            );
          }),
    );
  }
}
