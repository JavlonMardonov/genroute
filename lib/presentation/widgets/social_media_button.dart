import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;

  const SocialMediaButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            height: 30,
            width: 30,
            imagePath,
            fit: BoxFit.cover,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
