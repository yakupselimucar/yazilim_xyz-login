import 'package:flutter/material.dart';
import 'package:yazilim_xyz/widgets/checkbox.dart';

class AllowAgreement extends StatelessWidget {
  const AllowAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          children: [
            CustomCheckbox(),
            Text("I agree to", style: TextStyle(color: Colors.grey))
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "terms of use",
            style: TextStyle(
                color: Colors.blue.shade300, fontWeight: FontWeight.bold),
          ),
        ),
        const Text("and", style: TextStyle(color: Colors.grey)),
        TextButton(
          onPressed: () {},
          child: Text(
            "privacy policy",
            style: TextStyle(
                color: Colors.blue.shade300, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
