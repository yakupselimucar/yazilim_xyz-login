import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountSignUp extends StatelessWidget {
  const AccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Don't have an account?",
              style: TextStyle(color: Colors.grey)),
          TextButton(
            onPressed: () {
              context.push("/signUp");
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.blue.shade300, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
