import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.black, // Dark background
    elevation: 0, // No shadow
    title: Row(
      children: [
        // YouTube logo and text
        Row(
          children: [
            Image.asset(
              '/Users/user/Documents/GitHub/flutter_application_1/assets/images/hd-youtube-logo-png-transparent-background-20.png', 
              width: 100, // Adjust the size of the logo
            ),
            const SizedBox(width: 10), // Space between logo and text
            const Text(
              'YouTube',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Spacer(), // Pushes the icons to the far left
        // Icons
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white), // White icon
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white), // White icon
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.white), // White icon
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}
