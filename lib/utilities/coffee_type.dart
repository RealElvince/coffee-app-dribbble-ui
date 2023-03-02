import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  const CoffeeType({
    super.key,
    required this.coffeeType,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Text(
        coffeeType,
        style: TextStyle(
            fontSize: 20.0, color: isSelected ? Colors.orange : Colors.white),
      ),
    );
  }
}
