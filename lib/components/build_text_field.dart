import 'package:flutter/material.dart';

class BuildCustomTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  const BuildCustomTextField({
    super.key,
    this.text = "Name",
    this.icon = Icons.drive_file_rename_outline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: TextField(
        decoration: InputDecoration(
          label: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 10),
              Text(text, style: TextStyle(color: Colors.grey)),
            ],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
