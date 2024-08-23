import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yazilim_xyz/widgets/checkbox.dart';

class RememberForgot extends StatelessWidget {
  const RememberForgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            CustomCheckbox(),
            Text("Remember me", style: TextStyle(color: Colors.grey))
          ],
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).go("/forgot");
          },
          child: Text(
            "Forgot password?",
            style: TextStyle(
                color: Colors.blue.shade300, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
