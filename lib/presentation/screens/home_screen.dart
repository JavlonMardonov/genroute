import 'package:flutter/material.dart';
import 'package:genroute/presentation/screens/started_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool menButtonClicked = false;
  bool womenButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9775FA),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: Image.asset(
                'assets/images/laza.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "Look Good, Feel Good",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Create your individual & unique style and look amazing everyday.",
                          style: TextStyle(
                            color: Color(0xFF8F959E),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  menButtonClicked = !menButtonClicked;
                                  womenButtonClicked = false;
                                });
                                Navigator.of(context).pushNamed(
                                  StartedScreen.routeName,
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 150,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: menButtonClicked
                                      ? Color(0xFF9775FA)
                                      : Color(0xFFF5F6FA),
                                ),
                                child: Text(
                                  "Men",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: menButtonClicked
                                        ? Colors.white
                                        : Color(0xFF8F959E),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  womenButtonClicked = !womenButtonClicked;
                                  menButtonClicked = false;
                                });
                                Navigator.of(context).pushNamed(
                                  StartedScreen.routeName,
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 150,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: womenButtonClicked
                                      ? Color(0xFF9775FA)
                                      : Color(0xFFF5F6FA),
                                ),
                                child: Text(
                                  "Women",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: womenButtonClicked
                                        ? Colors.white
                                        : Color(0xFF8F959E),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () => Navigator.of(context).pushNamed(
                          StartedScreen.routeName,
                        ),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8F959E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
