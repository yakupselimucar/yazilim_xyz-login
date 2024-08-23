import 'package:flutter/material.dart';

class AccountSignUp extends StatelessWidget {
  final String text;
  final String ButtonText;
  final VoidCallback textButtonOnPressed;

  AccountSignUp({
    super.key,
    this.text = "Don't have an account?",
    this.ButtonText = "Sign up",
    required this.textButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(color: Colors.grey)),
          TextButton(
            onPressed: () {
              //context.push("/signUp");
              textButtonOnPressed();
            },
            child: Text(
              ButtonText,
              style: TextStyle(
                  color: Colors.blue.shade300, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
