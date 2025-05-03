import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Avatar
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade300,
          child: Icon(Icons.person, size: 30, color: Colors.white),
        ),
        SizedBox(height: 10),
        // Name
        Text(
          "User Name",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 6),
        // Admin Button
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black87),
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent, // Transparent background
          ),
          child: Text(
            "Admin",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}