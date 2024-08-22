import 'package:flutter/material.dart';
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
          onPressed: () {},
          child: Text(
            "Forgot password?",
            style: TextStyle(
                color: Colors.blue.shade500, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
