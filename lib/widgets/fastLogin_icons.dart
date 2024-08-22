import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FastLoginIcons extends StatelessWidget {
  const FastLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            EvaIcons.google,
            size: 35,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
          icon: Icon(
            BoxIcons.bxl_apple,
            size: 40,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
          icon: Icon(
            EvaIcons.facebook,
            size: 35,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
