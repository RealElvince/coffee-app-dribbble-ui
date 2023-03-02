import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTile(
      {super.key,
      required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeePrice});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(coffeeImagePath),
              ),
              //Coffee name
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'With Almond milk.',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    )
                  ],
                ),
              ),

              // Price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coffeePrice,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.orange),
                    child: GestureDetector(
                        onTap: () {}, child: const Icon(Icons.add)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
