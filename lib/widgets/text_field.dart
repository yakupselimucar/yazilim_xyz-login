import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 0,
                blurRadius: 20, // Increased blur radius
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: const TextField(
            decoration: InputDecoration(
                label: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text("Email", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 20,
                  offset: const Offset(0, 4))
            ],
          ),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
                label: Row(
                  children: [
                    Icon(Icons.password),
                    SizedBox(width: 10),
                    Text("Password", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
