import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Menu Icon
        Container(
          height: 40.0,
          margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[900],
              boxShadow: const [
                BoxShadow(blurRadius: 3.0, color: Colors.grey)
              ]),
          child: const Icon(
            Icons.sort,
            size: 30.0,
            color: Colors.white,
          ),
        ),

        // Icon person
        Container(
          height: 40.0,
          margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[900],
              boxShadow: const [
                BoxShadow(blurRadius: 4.0, color: Colors.grey)
              ]),
          child: const Icon(
            Icons.person,
            size: 30.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
