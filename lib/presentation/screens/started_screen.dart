import 'package:flutter/material.dart';
import 'package:genroute/presentation/widgets/social_media_button.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  static const routeName = 'started';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xFFF5F6FA),
          ),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_rounded,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 120),
              Center(
                child: Column(
                  children: [
                    SocialMediaButton(
                      title: "Facebook",
                      imagePath: "assets/images/Facebook.png",
                      color: Color(0xFF4267B2),
                    ),
                    SizedBox(height: 20),
                    SocialMediaButton(
                      title: "Twitter",
                      imagePath: "assets/images/Twitter.png",
                      color: Color(0xFF1DA1F2),
                    ),
                    SizedBox(height: 20),
                    SocialMediaButton(
                      title: "Google",
                      imagePath: "assets/images/Google.png",
                      color: Color(0xFFEA4335),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 160),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(onPressed: () {}, child: Text("Signin")),
                ],
              ),
              SizedBox(height: 40),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9775FA),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
