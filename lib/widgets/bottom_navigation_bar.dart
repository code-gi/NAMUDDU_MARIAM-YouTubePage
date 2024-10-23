import 'package:flutter/material.dart';

BottomNavigationBar customBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.video_library),
        label: 'Shorts',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_circle_outline),
        label: 'Upload',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.subscriptions),
        label: 'Subscriptions',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'MARIAM',
      ),
    ],
  );
}
