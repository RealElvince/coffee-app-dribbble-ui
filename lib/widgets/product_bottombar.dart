import 'package:flutter/material.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Latte',
                style: TextStyle(fontSize: 20.0),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '(7,890)',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text('Description'),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Latte is a coffee-based drink made primarily from expresso and milk...Read more.',
            style: TextStyle(fontSize: 25.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Size',
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //S
              Container(
                alignment: Alignment.center,
                height: 45.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                      )
                    ]),
                child: const Text('S', style: TextStyle(fontSize: 23.0)),
              ),
              //M
              Container(
                alignment: Alignment.center,
                height: 45.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                      )
                    ]),
                child: const Text('M', style: TextStyle(fontSize: 23.0)),
              ),
              //L
              Container(
                alignment: Alignment.center,
                height: 45.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                      )
                    ]),
                child: const Text('L', style: TextStyle(fontSize: 23.0)),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    'Price',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    '1500 KES',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ],
              ),
              const SizedBox(
                width: 12.0,
              ),
              Container(
                alignment: Alignment.center,
                height: 60.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
