import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final VoidCallback onPressed;

  LoginButton({
    super.key,
    this.text = "Login",
    this.color = const Color(0xFF55b8d9),
    this.textColor = Colors.white,
    this.height = 50,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        height: height,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 21,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
