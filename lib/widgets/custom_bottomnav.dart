import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        //Home icon
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: ''),
        // Favourite Icon
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        // Notification Icon
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ],
    );
  }
}
