import 'package:coffeedribbleapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CoffeeDribble());

class CoffeeDribble extends StatelessWidget {
  const CoffeeDribble({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COFFEE DIRBBLE',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const HomeScreen(),
    );
  }
}
