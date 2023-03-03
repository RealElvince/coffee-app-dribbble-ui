import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back Arrrow Button
        Container(
          margin: const EdgeInsets.only(top: 30.0, left: 10.0),
          padding: const EdgeInsets.all(12.0),
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: const [
                BoxShadow(blurRadius: 4.0, color: Colors.grey)
              ]),
          child: const Icon(Icons.arrow_back_ios),
        ),
        // favorite drink
        InkWell(
          // onTap: () {
          //   Navigator.pop(context);
          // },
          child: Container(
            margin: const EdgeInsets.only(top: 30.0, right: 10.0),
            padding: const EdgeInsets.all(12.0),
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(blurRadius: 4.0, color: Colors.grey)
                ]),
            child: const Icon(Icons.favorite),
          ),
        ),
      ],
    );
  }
}
