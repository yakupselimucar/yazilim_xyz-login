import 'package:flutter/material.dart';

class AccountSignUp extends StatelessWidget {
  const AccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?", style: TextStyle(color: Colors.grey)),
          TextButton(
            onPressed: () {},
            child: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.blue.shade500, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
